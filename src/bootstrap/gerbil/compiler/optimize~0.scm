(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771104523)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp258385
                   (let ((__obj258379
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
                       (gxc#optimizer-info:::init! __obj258379))
                     __obj258379)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp258385)))))
    (define gxc#optimize!
      (lambda (_%ctx257987%_)
        (let ((__tmp258387
               (lambda ()
                 (let ((__tmp258389
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx257987%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx257987%_)
                          (let ((__tmp258391
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp258390
                                 (##structure-ref
                                  _%ctx257987%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258391 __tmp258390 '#t))
                          (let ((_%code257991%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx257987%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx257987%_
                             _%code257991%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp258388
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp258389
                    gxc#current-compile-local-type
                    __tmp258388))))
              (__tmp258386 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258387
           gxc#current-compile-mutators
           __tmp258386))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx257973%_)
        (letrec ((_%load-it!257975%_
                  (lambda (_%id257985%_)
                    (if (let ((__tmp258392
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp258392 _%id257985%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id257985%_)
                          (let ((__tmp258393
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258393 _%id257985%_ '#t)))))))
          (let* ((_%modid257977%_
                  (##structure-ref
                   _%ctx257973%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str257979%_ (symbol->string _%modid257977%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str257979%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str257979%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257975%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!257975%_
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
      (lambda (_%ctx257910%_)
        (letrec* ((_%deps257912%_
                   (let* ((_%imports257963%_
                           (##structure-ref
                            _%ctx257910%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e257965%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx257910%_))))
                     (if _%$e257965%_
                         ((lambda (_%g257967257969%_)
                            (cons _%g257967257969%_ _%imports257963%_))
                          _%$e257965%_)
                         _%imports257963%_))))
          (let _%lp257914%_ ((_%rest257916%_ _%deps257912%_))
            (let* ((_%rest257917257925%_ _%rest257916%_)
                   (_%else257919257933%_ (lambda () '#!void))
                   (_%K257921257951%_
                    (lambda (_%rest257936%_ _%hd257937%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd257937%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp258395
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp258394
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257937%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp258395 __tmp258394))
                                '#!void
                                (begin
                                  (let ((_%$e257940%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd257937%_))))
                                    (if _%$e257940%_
                                        ((lambda (_%pre257943%_)
                                           (_%lp257914%_
                                            (cons _%pre257943%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd257937%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e257940%_)
                                        (_%lp257914%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257937%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd257937%_)))
                            (_%lp257914%_ _%rest257936%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd257937%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp258397
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp258396
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd257937%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp258397 __tmp258396))
                                    '#!void
                                    (begin
                                      (_%lp257914%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd257937%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd257937%_)))
                                (_%lp257914%_ _%rest257936%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd257937%_
                                     'gx#module-import::t))
                                  (_%lp257914%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd257937%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest257936%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd257937%_
                                         'gx#module-export::t))
                                      (_%lp257914%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd257937%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest257936%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd257937%_
                                             'gx#import-set::t))
                                          (_%lp257914%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd257937%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest257936%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd257937%_))))))))))
              (if (pair? _%rest257917257925%_)
                  (let ((_%hd257922257954%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest257917257925%_)))
                        (_%tl257923257956%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest257917257925%_))))
                    (let* ((_%hd257959%_ _%hd257922257954%_)
                           (_%rest257961%_ _%tl257923257956%_))
                      (_%K257921257951%_ _%rest257961%_ _%hd257959%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx257890%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx257890%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx257890%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht257892%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id257894%_
                    (##structure-ref
                     _%ctx257890%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod257896%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht257892%_ _%id257894%_)))
                   (_%$e257899%_ _%mod257896%_))
              (if _%$e257899%_
                  _%$e257899%_
                  (let* ((_%mod257902%_
                          (gxc#optimizer-import-ssxi _%ctx257890%_))
                         (_%val257907%_
                          (let ((_%$e257904%_ _%mod257902%_))
                            (if _%$e257904%_ _%$e257904%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht257892%_ _%id257894%_ _%val257907%_))
                    _%val257907%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx257888%_)
        (if (##structure-ref _%ctx257888%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx257888%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id257866%_)
        (letrec ((_%catch-e257868%_
                  (lambda (_%exn257886%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn257886%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn257886%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id257866%_))))
                    '#f))
                 (_%import-e257869%_
                  (lambda ()
                    (let* ((_%str-id257872%_
                            (let ((__tmp258398
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id257866%_))))
                              (declare (not safe))
                              (##string-append __tmp258398 '".ssxi")))
                           (_%artefact-path257879%_
                            (let ((_%odir257873257875%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir257873257875%_
                                  (let ((_%odir257877%_ _%odir257873257875%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id257872%_
                                        '".ss"))
                                     _%odir257877%_))
                                  '#f)))
                           (_%library-path257881%_
                            (let ((__tmp258399
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id257872%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp258399)))
                           (_%ssxi-path257883%_
                            (if (and _%artefact-path257879%_
                                     (file-exists? _%artefact-path257879%_))
                                _%artefact-path257879%_
                                _%library-path257881%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path257883%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path257883%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e257868%_ _%import-e257869%_)))))
    (define gxc#optimize-source
      (lambda (_%stx257851%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx257851%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx257851%_))
        (let* ((_%stx257853%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx257851%_)))
               (_%stx257855%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx257853%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx257855%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx257855%_))
          (let _%fixpoint257858%_ ((_%current257860%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx257855%_))
            (let ((_%refined257862%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current257860%_ _%refined257862%_)
                  '#!void
                  (_%fixpoint257858%_ _%refined257862%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx257855%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx257855%_))
          (let ((_%stx257864%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx257855%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx257864%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp258401 (list gxc#::generate-runtime-empty::t))
            (__tmp258400 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp258401
         '()
         __tmp258400
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args257848%_
        (apply make-instance gxc#::generate-ssxi::t _%$args257848%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp258402
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
        (__make-atomic-promise __tmp258402)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx257840%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self257843%_
                (let ((__obj258381
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj258381))
               (__tmp258403
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self257843%_ _%stx257840%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258403
           gxc#current-compile-method
           _%self257843%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self257800%_ _%stx257801%_)
        (let* ((_%g257803257813%_
                (lambda (_%g257804257810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257804257810%_))))
               (_%g257802257837%_
                (lambda (_%g257804257816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257804257816%_))
                      (let ((_%e257806257818%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257804257816%_))))
                        (let ((_%hd257807257821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257806257818%_)))
                              (_%tl257808257823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257806257818%_))))
                          ((lambda (_%g257805257826%_)
                             (let ((__tmp258406
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self257800%_
                                         _%stx257801%_))))
                                   (__tmp258404
                                    (let ((__tmp258405
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp258405 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp258406
                                gx#current-expander-phi
                                __tmp258404)))
                           _%tl257808257823%_)))
                      (_%g257803257813%_ _%g257804257816%_)))))
          (_%g257802257837%_ _%stx257801%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self257739%_ _%stx257740%_)
        (let* ((_%g257742257756%_
                (lambda (_%g257743257753%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g257743257753%_))))
               (_%g257741257797%_
                (lambda (_%g257743257759%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g257743257759%_))
                      (let ((_%e257746257761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g257743257759%_))))
                        (let ((_%hd257747257764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257746257761%_)))
                              (_%tl257748257766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257746257761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl257748257766%_))
                              (let ((_%e257749257769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl257748257766%_))))
                                (let ((_%hd257750257772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257749257769%_)))
                                      (_%tl257751257774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257749257769%_))))
                                  ((lambda (_%g257744257777%_
                                            _%g257745257778%_)
                                     (let* ((_%ctx257791%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g257745257778%_)))
                                            (_%code257793%_
                                             (##structure-ref
                                              _%ctx257791%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp258407
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self257739%_
                                                  _%code257793%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp258407
                                        gx#current-expander-context
                                        _%ctx257791%_)))
                                   _%tl257751257774%_
                                   _%hd257750257772%_)))
                              (_%g257742257756%_ _%g257743257759%_))))
                      (_%g257742257756%_ _%g257743257759%_)))))
          (_%g257741257797%_ _%stx257740%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self257546%_ _%stx257547%_)
        (letrec ((_%generate-e257549%_
                  (lambda (_%id257724%_)
                    (let* ((_%sym257726%_
                            (if (let ((__tmp258408
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp258408))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id257724%_))
                                '#f))
                           (_%$e257728%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym257726%_))))
                      (if _%$e257728%_
                          ((lambda (_%klass257731%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym257726%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym257726%_
                                                     (cons (let ((__method258382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass257731%_ 'typedecl))))
                     (if __method258382
                         (let ()
                           (declare (not safe))
                           (__method258382 _%klass257731%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass257731%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym257726%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym257726%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e257728%_)
                          (let ((_%$e257733%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym257726%_))))
                            (if _%$e257733%_
                                ((lambda (_%type257736%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym257726%_
                                      '" "
                                      _%type257736%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type257736%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym257726%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym257726%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type257736%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym257726%_
                                                   (cons (let ((__method258383
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type257736%_ 'typedecl))))
                   (if __method258383
                       (let ()
                         (declare (not safe))
                         (__method258383 _%type257736%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type257736%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e257733%_)
                                '(begin))))))))
          (let* ((_%__stx257994257995%_ _%stx257547%_)
                 (_%g257552257590%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx257994257995%_)))))
            (let ((_%__kont257996257997%_
                   (lambda (_%g257554257706%_)
                     (_%generate-e257549%_ _%g257554257706%_)))
                  (_%__kont257998257999%_
                   (lambda (_%g257567257641%_)
                     (let ((_%types257667%_
                            (map _%generate-e257549%_
                                 (let ((__tmp258409
                                        (lambda (_%g257659257662%_
                                                 _%g257660257664%_)
                                          (cons _%g257659257662%_
                                                _%g257660257664%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp258409
                                    '()
                                    _%g257567257641%_)))))
                       (cons 'begin _%types257667%_)))))
              (let ((_%__match258049258050%_
                     (lambda (_%e257568257595%_
                              _%hd257569257598%_
                              _%tl257570257600%_
                              _%e257571257603%_
                              _%hd257572257606%_
                              _%tl257573257608%_
                              _%__splice258000258001%_
                              _%target257574257611%_
                              _%tl257576257613%_)
                       (letrec ((_%loop257577257616%_
                                 (lambda (_%hd257575257619%_
                                          _%id257581257621%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd257575257619%_))
                                       (let ((_%e257578257623%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd257575257619%_))))
                                         (let ((_%lp-tl257580257628%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e257578257623%_)))
                                               (_%lp-hd257579257626%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e257578257623%_))))
                                           (_%loop257577257616%_
                                            _%lp-tl257580257628%_
                                            (cons _%lp-hd257579257626%_
                                                  _%id257581257621%_))))
                                       (let ((_%id257582257631%_
                                              (reverse _%id257581257621%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl257573257608%_))
                                             (let ((_%e257583257633%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl257573257608%_))))
                                               (let ((_%tl257585257638%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e257583257633%_)))
                                                     (_%hd257584257636%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e257583257633%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl257585257638%_))
                                                     (_%__kont257998257999%_
                                                      _%id257582257631%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g257552257590%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g257552257590%_))))))))
                         (_%loop257577257616%_ _%target257574257611%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx257994257995%_))
                    (let ((_%e257555257674%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx257994257995%_))))
                      (let ((_%tl257557257679%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257555257674%_)))
                            (_%hd257556257677%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257555257674%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl257557257679%_))
                            (let ((_%e257558257682%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl257557257679%_))))
                              (let ((_%tl257560257687%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e257558257682%_)))
                                    (_%hd257559257685%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e257558257682%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd257559257685%_))
                                    (let ((_%e257561257690%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd257559257685%_))))
                                      (let ((_%tl257563257695%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e257561257690%_)))
                                            (_%hd257562257693%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e257561257690%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257563257695%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257560257687%_))
                                                (let ((_%e257564257698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257560257687%_))))
                                                  (let ((_%tl257566257703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257564257698%_)))
                                                        (_%hd257565257701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257564257698%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257566257703%_))
                                                        (_%__kont257996257997%_
                                                         _%hd257562257693%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd257559257685%_))
                                                            (let ((_%__splice258000258001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd257559257685%_
                              '0))))
                      (let ((_%tl257576257613%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice258000258001%_ '1)))
                            (_%target257574257611%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice258000258001%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl257576257613%_))
                            (_%__match258049258050%_
                             _%e257555257674%_
                             _%hd257556257677%_
                             _%tl257557257679%_
                             _%e257558257682%_
                             _%hd257559257685%_
                             _%tl257560257687%_
                             _%__splice258000258001%_
                             _%target257574257611%_
                             _%tl257576257613%_)
                            (let ()
                              (declare (not safe))
                              (_%g257552257590%_)))))
                    (let () (declare (not safe)) (_%g257552257590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd257559257685%_))
                                                    (let ((_%__splice258000258001%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd257559257685%_
                                                              '0))))
                                                      (let ((_%tl257576257613%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice258000258001%_ '1)))
                    (_%target257574257611%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice258000258001%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl257576257613%_))
                    (_%__match258049258050%_
                     _%e257555257674%_
                     _%hd257556257677%_
                     _%tl257557257679%_
                     _%e257558257682%_
                     _%hd257559257685%_
                     _%tl257560257687%_
                     _%__splice258000258001%_
                     _%target257574257611%_
                     _%tl257576257613%_)
                    (let () (declare (not safe)) (_%g257552257590%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257552257590%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd257559257685%_))
                                                (let ((_%__splice258000258001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd257559257685%_
                                                          '0))))
                                                  (let ((_%tl257576257613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice258000258001%_
                                                            '1)))
                                                        (_%target257574257611%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice258000258001%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257576257613%_))
                                                        (_%__match258049258050%_
                                                         _%e257555257674%_
                                                         _%hd257556257677%_
                                                         _%tl257557257679%_
                                                         _%e257558257682%_
                                                         _%hd257559257685%_
                                                         _%tl257560257687%_
                                                         _%__splice258000258001%_
                                                         _%target257574257611%_
                                                         _%tl257576257613%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257552257590%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257552257590%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd257559257685%_))
                                        (let ((_%__splice258000258001%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd257559257685%_
                                                  '0))))
                                          (let ((_%tl257576257613%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice258000258001%_
                                                    '1)))
                                                (_%target257574257611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice258000258001%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257576257613%_))
                                                (_%__match258049258050%_
                                                 _%e257555257674%_
                                                 _%hd257556257677%_
                                                 _%tl257557257679%_
                                                 _%e257558257682%_
                                                 _%hd257559257685%_
                                                 _%tl257560257687%_
                                                 _%__splice258000258001%_
                                                 _%target257574257611%_
                                                 _%tl257576257613%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257552257590%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g257552257590%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g257552257590%_)))))
                    (let () (declare (not safe)) (_%g257552257590%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self257099%_ _%stx257100%_)
        (let* ((_%__stx258052258053%_ _%stx257100%_)
               (_%g257104257206%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258052258053%_)))))
          (let ((_%__kont258054258055%_
                 (lambda (_%g257106257496%_
                          _%g257107257497%_
                          _%g257108257498%_
                          _%g257109257499%_
                          _%g257110257500%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257109257499%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257108257498%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257107257497%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g257106257496%_))
                                                 '())))))))
                (_%__kont258056258057%_
                 (lambda (_%g257159257322%_
                          _%g257160257323%_
                          _%g257161257324%_
                          _%g257162257325%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257161257324%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257160257323%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257159257322%_))
                                           (cons '#f '())))))))
                (_%__kont258058258059%_ (lambda () '(begin))))
            (let ((_%__match258187258188%_
                   (lambda (_%e257111257368%_
                            _%hd257112257371%_
                            _%tl257113257373%_
                            _%e257114257376%_
                            _%hd257115257379%_
                            _%tl257116257381%_
                            _%e257117257384%_
                            _%hd257118257387%_
                            _%tl257119257389%_
                            _%e257120257392%_
                            _%hd257121257395%_
                            _%tl257122257397%_
                            _%e257123257400%_
                            _%hd257124257403%_
                            _%tl257125257405%_
                            _%e257126257408%_
                            _%hd257127257411%_
                            _%tl257128257413%_
                            _%e257129257416%_
                            _%hd257130257419%_
                            _%tl257131257421%_
                            _%e257132257424%_
                            _%hd257133257427%_
                            _%tl257134257429%_
                            _%e257135257432%_
                            _%hd257136257435%_
                            _%tl257137257437%_
                            _%e257138257440%_
                            _%hd257139257443%_
                            _%tl257140257445%_
                            _%e257141257448%_
                            _%hd257142257451%_
                            _%tl257143257453%_
                            _%e257144257456%_
                            _%hd257145257459%_
                            _%tl257146257461%_
                            _%e257147257464%_
                            _%hd257148257467%_
                            _%tl257149257469%_
                            _%e257150257472%_
                            _%hd257151257475%_
                            _%tl257152257477%_
                            _%e257153257480%_
                            _%hd257154257483%_
                            _%tl257155257485%_
                            _%e257156257488%_
                            _%hd257157257491%_
                            _%tl257158257493%_)
                     (let ((_%g257106257496%_ _%hd257157257491%_)
                           (_%g257107257497%_ _%hd257148257467%_)
                           (_%g257108257498%_ _%hd257139257443%_)
                           (_%g257109257499%_ _%hd257130257419%_)
                           (_%g257110257500%_ _%hd257121257395%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g257110257500%_
                              'bind-method!))
                           (_%__kont258054258055%_
                            _%g257106257496%_
                            _%g257107257497%_
                            _%g257108257498%_
                            _%g257109257499%_
                            _%g257110257500%_)
                           (_%__kont258058258059%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx258052258053%_))
                  (let ((_%e257111257368%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx258052258053%_))))
                    (let ((_%tl257113257373%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257111257368%_)))
                          (_%hd257112257371%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257111257368%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257113257373%_))
                          (let ((_%e257114257376%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl257113257373%_))))
                            (let ((_%tl257116257381%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257114257376%_)))
                                  (_%hd257115257379%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257114257376%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd257115257379%_))
                                  (let ((_%e257117257384%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd257115257379%_))))
                                    (let ((_%tl257119257389%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257117257384%_)))
                                          (_%hd257118257387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257117257384%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd257118257387%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd257118257387%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257119257389%_))
                                                  (let ((_%e257120257392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257119257389%_))))
                                                    (let ((_%tl257122257397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257120257392%_)))
                                                          (_%hd257121257395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257120257392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl257122257397%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl257116257381%_))
                      (let ((_%e257123257400%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl257116257381%_))))
                        (let ((_%tl257125257405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257123257400%_)))
                              (_%hd257124257403%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257123257400%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd257124257403%_))
                              (let ((_%e257126257408%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd257124257403%_))))
                                (let ((_%tl257128257413%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257126257408%_)))
                                      (_%hd257127257411%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257126257408%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd257127257411%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd257127257411%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257128257413%_))
                                              (let ((_%e257129257416%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl257128257413%_))))
                                                (let ((_%tl257131257421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257129257416%_)))
                                                      (_%hd257130257419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257129257416%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257131257421%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl257125257405%_))
                                                          (let ((_%e257132257424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl257125257405%_))))
                    (let ((_%tl257134257429%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257132257424%_)))
                          (_%hd257133257427%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257132257424%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd257133257427%_))
                          (let ((_%e257135257432%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd257133257427%_))))
                            (let ((_%tl257137257437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257135257432%_)))
                                  (_%hd257136257435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257135257432%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd257136257435%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd257136257435%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl257137257437%_))
                                          (let ((_%e257138257440%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl257137257437%_))))
                                            (let ((_%tl257140257445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e257138257440%_)))
                                                  (_%hd257139257443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e257138257440%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl257140257445%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257134257429%_))
                                                      (let ((_%e257141257448%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl257134257429%_))))
                (let ((_%tl257143257453%_
                       (let () (declare (not safe)) (##cdr _%e257141257448%_)))
                      (_%hd257142257451%_
                       (let ()
                         (declare (not safe))
                         (##car _%e257141257448%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd257142257451%_))
                      (let ((_%e257144257456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd257142257451%_))))
                        (let ((_%tl257146257461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257144257456%_)))
                              (_%hd257145257459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257144257456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd257145257459%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd257145257459%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257146257461%_))
                                      (let ((_%e257147257464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl257146257461%_))))
                                        (let ((_%tl257149257469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257147257464%_)))
                                              (_%hd257148257467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257147257464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257149257469%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257143257453%_))
                                                  (let ((_%e257150257472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257143257453%_))))
                                                    (let ((_%tl257152257477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257150257472%_)))
                                                          (_%hd257151257475%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257150257472%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd257151257475%_))
                                                          (let ((_%e257153257480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd257151257475%_))))
                    (let ((_%tl257155257485%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257153257480%_)))
                          (_%hd257154257483%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257153257480%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd257154257483%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd257154257483%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl257155257485%_))
                                  (let ((_%e257156257488%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl257155257485%_))))
                                    (let ((_%tl257158257493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257156257488%_)))
                                          (_%hd257157257491%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257156257488%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl257158257493%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257152257477%_))
                                              (_%__match258187258188%_
                                               _%e257111257368%_
                                               _%hd257112257371%_
                                               _%tl257113257373%_
                                               _%e257114257376%_
                                               _%hd257115257379%_
                                               _%tl257116257381%_
                                               _%e257117257384%_
                                               _%hd257118257387%_
                                               _%tl257119257389%_
                                               _%e257120257392%_
                                               _%hd257121257395%_
                                               _%tl257122257397%_
                                               _%e257123257400%_
                                               _%hd257124257403%_
                                               _%tl257125257405%_
                                               _%e257126257408%_
                                               _%hd257127257411%_
                                               _%tl257128257413%_
                                               _%e257129257416%_
                                               _%hd257130257419%_
                                               _%tl257131257421%_
                                               _%e257132257424%_
                                               _%hd257133257427%_
                                               _%tl257134257429%_
                                               _%e257135257432%_
                                               _%hd257136257435%_
                                               _%tl257137257437%_
                                               _%e257138257440%_
                                               _%hd257139257443%_
                                               _%tl257140257445%_
                                               _%e257141257448%_
                                               _%hd257142257451%_
                                               _%tl257143257453%_
                                               _%e257144257456%_
                                               _%hd257145257459%_
                                               _%tl257146257461%_
                                               _%e257147257464%_
                                               _%hd257148257467%_
                                               _%tl257149257469%_
                                               _%e257150257472%_
                                               _%hd257151257475%_
                                               _%tl257152257477%_
                                               _%e257153257480%_
                                               _%hd257154257483%_
                                               _%tl257155257485%_
                                               _%e257156257488%_
                                               _%hd257157257491%_
                                               _%tl257158257493%_)
                                              (_%__kont258058258059%_))
                                          (_%__kont258058258059%_))))
                                  (_%__kont258058258059%_))
                              (_%__kont258058258059%_))
                          (_%__kont258058258059%_))))
                  (_%__kont258058258059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257143257453%_))
                                                      (if (let ((__tmp258410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp258410 'bind-method!))
                  (let ((_%g257159257322%_ _%hd257148257467%_)
                        (_%g257160257323%_ _%hd257139257443%_)
                        (_%g257161257324%_ _%hd257130257419%_)
                        (_%g257162257325%_ _%hd257121257395%_))
                    (_%__kont258056258057%_
                     _%g257159257322%_
                     _%g257160257323%_
                     _%g257161257324%_
                     _%g257162257325%_))
                  (_%__kont258058258059%_))
              (_%__kont258058258059%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont258058258059%_))))
                                      (_%__kont258058258059%_))
                                  (_%__kont258058258059%_))
                              (_%__kont258058258059%_))))
                      (_%__kont258058258059%_))))
              (_%__kont258058258059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont258058258059%_))))
                                          (_%__kont258058258059%_))
                                      (_%__kont258058258059%_))
                                  (_%__kont258058258059%_))))
                          (_%__kont258058258059%_))))
                  (_%__kont258058258059%_))
              (_%__kont258058258059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont258058258059%_))
                                          (_%__kont258058258059%_))
                                      (_%__kont258058258059%_))))
                              (_%__kont258058258059%_))))
                      (_%__kont258058258059%_))
                  (_%__kont258058258059%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont258058258059%_))
                                              (_%__kont258058258059%_))
                                          (_%__kont258058258059%_))))
                                  (_%__kont258058258059%_))))
                          (_%__kont258058258059%_))))
                  (_%__kont258058258059%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self256923%_ _%stx256924%_)
        (let* ((_%__stx258296258297%_ _%stx256924%_)
               (_%g256927256967%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258296258297%_)))))
          (let ((_%__kont258298258299%_
                 (lambda (_%g256929257073%_ _%g256930257074%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g256930257074%_))
                               (cons _%g256929257073%_ '())))))
                (_%__kont258300258301%_
                 (lambda (_%g256952256996%_ _%g256953256997%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx258296258297%_))
                (let ((_%e256931257017%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx258296258297%_))))
                  (let ((_%tl256933257022%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e256931257017%_)))
                        (_%hd256932257020%_
                         (let ()
                           (declare (not safe))
                           (##car _%e256931257017%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl256933257022%_))
                        (let ((_%e256934257025%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl256933257022%_))))
                          (let ((_%tl256936257030%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e256934257025%_)))
                                (_%hd256935257028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e256934257025%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd256935257028%_))
                                (let ((_%e256937257033%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd256935257028%_))))
                                  (let ((_%tl256939257038%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e256937257033%_)))
                                        (_%hd256938257036%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e256937257033%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd256938257036%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd256938257036%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256939257038%_))
                                                (let ((_%e256940257041%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256939257038%_))))
                                                  (let ((_%tl256942257046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256940257041%_)))
                                                        (_%hd256941257044%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256940257041%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256942257046%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl256936257030%_))
                                                            (let ((_%e256943257049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256936257030%_))))
                      (let ((_%tl256945257054%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256943257049%_)))
                            (_%hd256944257052%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256943257049%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd256944257052%_))
                            (let ((_%e256946257057%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd256944257052%_))))
                              (let ((_%tl256948257062%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e256946257057%_)))
                                    (_%hd256947257060%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e256946257057%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd256947257060%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd256947257060%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256948257062%_))
                                            (let ((_%e256949257065%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256948257062%_))))
                                              (let ((_%tl256951257070%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256949257065%_)))
                                                    (_%hd256950257068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256949257065%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256951257070%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256945257054%_))
                                                        (_%__kont258298258299%_
                                                         _%hd256950257068%_
                                                         _%hd256941257044%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256927256967%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256945257054%_))
                                                        (_%__kont258300258301%_
                                                         _%hd256944257052%_
                                                         _%hd256935257028%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256927256967%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl256945257054%_))
                                                (_%__kont258300258301%_
                                                 _%hd256944257052%_
                                                 _%hd256935257028%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256927256967%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256945257054%_))
                                            (_%__kont258300258301%_
                                             _%hd256944257052%_
                                             _%hd256935257028%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256927256967%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl256945257054%_))
                                        (_%__kont258300258301%_
                                         _%hd256944257052%_
                                         _%hd256935257028%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g256927256967%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl256945257054%_))
                                (_%__kont258300258301%_
                                 _%hd256944257052%_
                                 _%hd256935257028%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g256927256967%_))))))
                    (let () (declare (not safe)) (_%g256927256967%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl256936257030%_))
                    (let ((_%e256960256988%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl256936257030%_))))
                      (let ((_%tl256962256993%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e256960256988%_)))
                            (_%hd256961256991%_
                             (let ()
                               (declare (not safe))
                               (##car _%e256960256988%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl256962256993%_))
                            (_%__kont258300258301%_
                             _%hd256961256991%_
                             _%hd256935257028%_)
                            (let ()
                              (declare (not safe))
                              (_%g256927256967%_)))))
                    (let () (declare (not safe)) (_%g256927256967%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl256936257030%_))
                                                    (let ((_%e256960256988%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl256936257030%_))))
                                                      (let ((_%tl256962256993%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e256960256988%_)))
                    (_%hd256961256991%_
                     (let () (declare (not safe)) (##car _%e256960256988%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl256962256993%_))
                    (_%__kont258300258301%_
                     _%hd256961256991%_
                     _%hd256935257028%_)
                    (let () (declare (not safe)) (_%g256927256967%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256927256967%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl256936257030%_))
                                                (let ((_%e256960256988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl256936257030%_))))
                                                  (let ((_%tl256962256993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e256960256988%_)))
                                                        (_%hd256961256991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e256960256988%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl256962256993%_))
                                                        (_%__kont258300258301%_
                                                         _%hd256961256991%_
                                                         _%hd256935257028%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g256927256967%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g256927256967%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl256936257030%_))
                                            (let ((_%e256960256988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl256936257030%_))))
                                              (let ((_%tl256962256993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e256960256988%_)))
                                                    (_%hd256961256991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e256960256988%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl256962256993%_))
                                                    (_%__kont258300258301%_
                                                     _%hd256961256991%_
                                                     _%hd256935257028%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g256927256967%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g256927256967%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl256936257030%_))
                                    (let ((_%e256960256988%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl256936257030%_))))
                                      (let ((_%tl256962256993%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e256960256988%_)))
                                            (_%hd256961256991%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e256960256988%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl256962256993%_))
                                            (_%__kont258300258301%_
                                             _%hd256961256991%_
                                             _%hd256935257028%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g256927256967%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g256927256967%_))))))
                        (let () (declare (not safe)) (_%g256927256967%_)))))
                (let () (declare (not safe)) (_%g256927256967%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self256910%_)
        (let ((_%self256913%_ _%self256910%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256913%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self256684%_)
        (let* ((_%self256687%_ _%self256684%_)
               (_%self256696256712%_ _%self256687%_)
               (_%E256698256715%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self256696256712%_
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
               (_%K256699256730%_
                (lambda (_%methods256718%_
                         _%metaclass256719%_
                         _%system?256720%_
                         _%final?256721%_
                         _%struct?256722%_
                         _%constructor256723%_
                         _%fields256724%_
                         _%slots256725%_
                         _%precendence-list256726%_
                         _%super256727%_
                         _%id256728%_)
                  (cons '@class
                        (cons _%id256728%_
                              (cons _%super256727%_
                                    (cons _%precendence-list256726%_
                                          (cons _%slots256725%_
                                                (cons _%fields256724%_
                                                      (cons _%constructor256723%_
                                                            (cons _%struct?256722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?256721%_
                                (cons _%system?256720%_
                                      (cons _%metaclass256719%_
                                            (cons (if _%methods256718%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods256718%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e256700256733%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '1 '#f '#f)))
               (_%id256736%_ _%e256700256733%_)
               (_%e256701256738%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '2 '#f '#f)))
               (_%super256741%_ _%e256701256738%_)
               (_%e256702256743%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '3 '#f '#f)))
               (_%precendence-list256746%_ _%e256702256743%_)
               (_%e256703256748%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '4 '#f '#f)))
               (_%slots256751%_ _%e256703256748%_)
               (_%e256704256753%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '5 '#f '#f)))
               (_%fields256756%_ _%e256704256753%_)
               (_%e256705256758%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '6 '#f '#f)))
               (_%constructor256761%_ _%e256705256758%_)
               (_%e256706256763%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '7 '#f '#f)))
               (_%struct?256766%_ _%e256706256763%_)
               (_%e256707256768%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '8 '#f '#f)))
               (_%final?256771%_ _%e256707256768%_)
               (_%e256708256773%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256696256712%_ '9 '#f '#f)))
               (_%system?256776%_ _%e256708256773%_)
               (_%e256709256778%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256696256712%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass256781%_ _%e256709256778%_)
               (_%e256710256783%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self256696256712%_
                   '11
                   '#f
                   '#f)))
               (_%methods256786%_ _%e256710256783%_))
          (_%K256699256730%_
           _%methods256786%_
           _%metaclass256781%_
           _%system?256776%_
           _%final?256771%_
           _%struct?256766%_
           _%constructor256761%_
           _%fields256756%_
           _%slots256751%_
           _%precendence-list256746%_
           _%super256741%_
           _%id256736%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self256549%_)
        (let ((_%self256552%_ _%self256549%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256552%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self256414%_)
        (let ((_%self256417%_ _%self256414%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256417%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self256279%_)
        (let ((_%self256282%_ _%self256279%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256282%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256282%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256282%_
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
      (lambda (_%self256144%_)
        (let ((_%self256147%_ _%self256144%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256147%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256147%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256147%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self256009%_)
        (let ((_%self256012%_ _%self256009%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256012%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256012%_
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
      (lambda (_%self255823%_)
        (let* ((_%self255826%_ _%self255823%_)
               (_%self255835255844%_ _%self255826%_)
               (_%E255837255847%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self255835255844%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K255838255866%_
                (lambda (_%dispatch255850%_
                         _%arity255851%_
                         _%signature255852%_)
                  (if _%signature255852%_
                      (let ((_%signature255854%_ _%signature255852%_))
                        (cons '@lambda
                              (cons _%arity255851%_
                                    (cons _%dispatch255850%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature255854%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature255854%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature255854%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature255854%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature255854%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity255851%_
                                  (cons _%dispatch255850%_ '()))))))
               (_%e255839255869%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255835255844%_ '1 '#f '#f)))
               (_%e255840255872%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255835255844%_ '2 '#f '#f)))
               (_%signature255875%_ _%e255840255872%_)
               (_%e255841255877%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255835255844%_ '3 '#f '#f)))
               (_%arity255880%_ _%e255841255877%_)
               (_%e255842255882%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self255835255844%_ '4 '#f '#f)))
               (_%dispatch255885%_ _%e255842255882%_))
          (_%K255838255866%_
           _%dispatch255885%_
           _%arity255880%_
           _%signature255875%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self255683%_)
        (let ((_%self255686%_ _%self255683%_))
          (letrec ((_%clause-e255697%_
                    (lambda (_%clause255699%_)
                      (cdr (let ((__method258384
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause255699%_
                                     'typedecl))))
                             (if __method258384
                                 (let ()
                                   (declare (not safe))
                                   (__method258384 _%clause255699%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause255699%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e255697%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self255686%_
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
      (lambda (_%self255548%_)
        (let ((_%self255551%_ _%self255548%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255551%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255551%_
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
      (lambda (_%self255413%_)
        (let ((_%self255416%_ _%self255413%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255416%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255416%_
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
      (lambda (_%self255278%_)
        (let ((_%self255281%_ _%self255278%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255281%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
