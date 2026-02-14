(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1771037617)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp266861
                   (let ((__obj266855
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
                       (gxc#optimizer-info:::init! __obj266855))
                     __obj266855)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp266861)))))
    (define gxc#optimize!
      (lambda (_%ctx266463%_)
        (let ((__tmp266863
               (lambda ()
                 (let ((__tmp266865
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx266463%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx266463%_)
                          (let ((__tmp266867
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp266866
                                 (##structure-ref
                                  _%ctx266463%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp266867 __tmp266866 '#t))
                          (let ((_%code266467%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx266463%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx266463%_
                             _%code266467%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp266864
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp266865
                    gxc#current-compile-local-type
                    __tmp266864))))
              (__tmp266862 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp266863
           gxc#current-compile-mutators
           __tmp266862))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx266449%_)
        (letrec ((_%load-it!266451%_
                  (lambda (_%id266461%_)
                    (if (let ((__tmp266868
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp266868 _%id266461%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id266461%_)
                          (let ((__tmp266869
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp266869 _%id266461%_ '#t)))))))
          (let* ((_%modid266453%_
                  (##structure-ref
                   _%ctx266449%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str266455%_ (symbol->string _%modid266453%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str266455%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str266455%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!266451%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!266451%_
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
      (lambda (_%ctx266386%_)
        (letrec* ((_%deps266388%_
                   (let* ((_%imports266439%_
                           (##structure-ref
                            _%ctx266386%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e266441%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx266386%_))))
                     (if _%$e266441%_
                         ((lambda (_%g266443266445%_)
                            (cons _%g266443266445%_ _%imports266439%_))
                          _%$e266441%_)
                         _%imports266439%_))))
          (let _%lp266390%_ ((_%rest266392%_ _%deps266388%_))
            (let* ((_%rest266393266401%_ _%rest266392%_)
                   (_%else266395266409%_ (lambda () '#!void))
                   (_%K266397266427%_
                    (lambda (_%rest266412%_ _%hd266413%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd266413%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp266871
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp266870
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd266413%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp266871 __tmp266870))
                                '#!void
                                (begin
                                  (let ((_%$e266416%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd266413%_))))
                                    (if _%$e266416%_
                                        ((lambda (_%pre266419%_)
                                           (_%lp266390%_
                                            (cons _%pre266419%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd266413%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e266416%_)
                                        (_%lp266390%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd266413%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd266413%_)))
                            (_%lp266390%_ _%rest266412%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd266413%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp266873
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp266872
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd266413%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp266873 __tmp266872))
                                    '#!void
                                    (begin
                                      (_%lp266390%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd266413%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd266413%_)))
                                (_%lp266390%_ _%rest266412%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd266413%_
                                     'gx#module-import::t))
                                  (_%lp266390%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd266413%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest266412%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd266413%_
                                         'gx#module-export::t))
                                      (_%lp266390%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd266413%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest266412%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd266413%_
                                             'gx#import-set::t))
                                          (_%lp266390%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd266413%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest266412%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd266413%_))))))))))
              (if (pair? _%rest266393266401%_)
                  (let ((_%hd266398266430%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest266393266401%_)))
                        (_%tl266399266432%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest266393266401%_))))
                    (let* ((_%hd266435%_ _%hd266398266430%_)
                           (_%rest266437%_ _%tl266399266432%_))
                      (_%K266397266427%_ _%rest266437%_ _%hd266435%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx266366%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx266366%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx266366%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht266368%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id266370%_
                    (##structure-ref
                     _%ctx266366%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod266372%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht266368%_ _%id266370%_)))
                   (_%$e266375%_ _%mod266372%_))
              (if _%$e266375%_
                  _%$e266375%_
                  (let* ((_%mod266378%_
                          (gxc#optimizer-import-ssxi _%ctx266366%_))
                         (_%val266383%_
                          (let ((_%$e266380%_ _%mod266378%_))
                            (if _%$e266380%_ _%$e266380%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht266368%_ _%id266370%_ _%val266383%_))
                    _%val266383%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx266364%_)
        (if (##structure-ref _%ctx266364%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx266364%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id266342%_)
        (letrec ((_%catch-e266344%_
                  (lambda (_%exn266362%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn266362%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn266362%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id266342%_))))
                    '#f))
                 (_%import-e266345%_
                  (lambda ()
                    (let* ((_%str-id266348%_
                            (let ((__tmp266874
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id266342%_))))
                              (declare (not safe))
                              (##string-append __tmp266874 '".ssxi")))
                           (_%artefact-path266355%_
                            (let ((_%odir266349266351%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir266349266351%_
                                  (let ((_%odir266353%_ _%odir266349266351%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id266348%_
                                        '".ss"))
                                     _%odir266353%_))
                                  '#f)))
                           (_%library-path266357%_
                            (let ((__tmp266875
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id266348%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp266875)))
                           (_%ssxi-path266359%_
                            (if (and _%artefact-path266355%_
                                     (file-exists? _%artefact-path266355%_))
                                _%artefact-path266355%_
                                _%library-path266357%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path266359%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path266359%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e266344%_ _%import-e266345%_)))))
    (define gxc#optimize-source
      (lambda (_%stx266327%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx266327%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx266327%_))
        (let* ((_%stx266329%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx266327%_)))
               (_%stx266331%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx266329%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx266331%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx266331%_))
          (let _%fixpoint266334%_ ((_%current266336%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx266331%_))
            (let ((_%refined266338%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current266336%_ _%refined266338%_)
                  '#!void
                  (_%fixpoint266334%_ _%refined266338%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx266331%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx266331%_))
          (let ((_%stx266340%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx266331%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx266340%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp266877 (list gxc#::generate-runtime-empty::t))
            (__tmp266876 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp266877
         '()
         __tmp266876
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args266324%_
        (apply make-instance gxc#::generate-ssxi::t _%$args266324%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp266878
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
        (__make-atomic-promise __tmp266878)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx266316%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self266319%_
                (let ((__obj266857
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj266857))
               (__tmp266879
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self266319%_ _%stx266316%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp266879
           gxc#current-compile-method
           _%self266319%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self266276%_ _%stx266277%_)
        (let* ((_%g266279266289%_
                (lambda (_%g266280266286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g266280266286%_))))
               (_%g266278266313%_
                (lambda (_%g266280266292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g266280266292%_))
                      (let ((_%e266282266294%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g266280266292%_))))
                        (let ((_%hd266283266297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266282266294%_)))
                              (_%tl266284266299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266282266294%_))))
                          ((lambda (_%g266281266302%_)
                             (let ((__tmp266882
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self266276%_
                                         _%stx266277%_))))
                                   (__tmp266880
                                    (let ((__tmp266881
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp266881 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp266882
                                gx#current-expander-phi
                                __tmp266880)))
                           _%tl266284266299%_)))
                      (_%g266279266289%_ _%g266280266292%_)))))
          (_%g266278266313%_ _%stx266277%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self266215%_ _%stx266216%_)
        (let* ((_%g266218266232%_
                (lambda (_%g266219266229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g266219266229%_))))
               (_%g266217266273%_
                (lambda (_%g266219266235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g266219266235%_))
                      (let ((_%e266222266237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g266219266235%_))))
                        (let ((_%hd266223266240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e266222266237%_)))
                              (_%tl266224266242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e266222266237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl266224266242%_))
                              (let ((_%e266225266245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl266224266242%_))))
                                (let ((_%hd266226266248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e266225266245%_)))
                                      (_%tl266227266250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e266225266245%_))))
                                  ((lambda (_%g266220266253%_
                                            _%g266221266254%_)
                                     (let* ((_%ctx266267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g266221266254%_)))
                                            (_%code266269%_
                                             (##structure-ref
                                              _%ctx266267%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp266883
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self266215%_
                                                  _%code266269%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp266883
                                        gx#current-expander-context
                                        _%ctx266267%_)))
                                   _%tl266227266250%_
                                   _%hd266226266248%_)))
                              (_%g266218266232%_ _%g266219266235%_))))
                      (_%g266218266232%_ _%g266219266235%_)))))
          (_%g266217266273%_ _%stx266216%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self266022%_ _%stx266023%_)
        (letrec ((_%generate-e266025%_
                  (lambda (_%id266200%_)
                    (let* ((_%sym266202%_
                            (if (let ((__tmp266884
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp266884))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id266200%_))
                                '#f))
                           (_%$e266204%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym266202%_))))
                      (if _%$e266204%_
                          ((lambda (_%klass266207%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym266202%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym266202%_
                                                     (cons (let ((__method266858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass266207%_ 'typedecl))))
                     (if __method266858
                         (let ()
                           (declare (not safe))
                           (__method266858 _%klass266207%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass266207%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym266202%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym266202%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e266204%_)
                          (let ((_%$e266209%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym266202%_))))
                            (if _%$e266209%_
                                ((lambda (_%type266212%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym266202%_
                                      '" "
                                      _%type266212%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type266212%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym266202%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym266202%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type266212%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym266202%_
                                                   (cons (let ((__method266859
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type266212%_ 'typedecl))))
                   (if __method266859
                       (let ()
                         (declare (not safe))
                         (__method266859 _%type266212%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type266212%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e266209%_)
                                '(begin))))))))
          (let* ((_%__stx266470266471%_ _%stx266023%_)
                 (_%g266028266066%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx266470266471%_)))))
            (let ((_%__kont266472266473%_
                   (lambda (_%g266030266182%_)
                     (_%generate-e266025%_ _%g266030266182%_)))
                  (_%__kont266474266475%_
                   (lambda (_%g266043266117%_)
                     (let ((_%types266143%_
                            (map _%generate-e266025%_
                                 (let ((__tmp266885
                                        (lambda (_%g266135266138%_
                                                 _%g266136266140%_)
                                          (cons _%g266135266138%_
                                                _%g266136266140%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp266885
                                    '()
                                    _%g266043266117%_)))))
                       (cons 'begin _%types266143%_)))))
              (let ((_%__match266525266526%_
                     (lambda (_%e266044266071%_
                              _%hd266045266074%_
                              _%tl266046266076%_
                              _%e266047266079%_
                              _%hd266048266082%_
                              _%tl266049266084%_
                              _%__splice266476266477%_
                              _%target266050266087%_
                              _%tl266052266089%_)
                       (letrec ((_%loop266053266092%_
                                 (lambda (_%hd266051266095%_
                                          _%id266057266097%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd266051266095%_))
                                       (let ((_%e266054266099%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd266051266095%_))))
                                         (let ((_%lp-tl266056266104%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e266054266099%_)))
                                               (_%lp-hd266055266102%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e266054266099%_))))
                                           (_%loop266053266092%_
                                            _%lp-tl266056266104%_
                                            (cons _%lp-hd266055266102%_
                                                  _%id266057266097%_))))
                                       (let ((_%id266058266107%_
                                              (reverse _%id266057266097%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl266049266084%_))
                                             (let ((_%e266059266109%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl266049266084%_))))
                                               (let ((_%tl266061266114%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e266059266109%_)))
                                                     (_%hd266060266112%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e266059266109%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl266061266114%_))
                                                     (_%__kont266474266475%_
                                                      _%id266058266107%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g266028266066%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g266028266066%_))))))))
                         (_%loop266053266092%_ _%target266050266087%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx266470266471%_))
                    (let ((_%e266031266150%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx266470266471%_))))
                      (let ((_%tl266033266155%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e266031266150%_)))
                            (_%hd266032266153%_
                             (let ()
                               (declare (not safe))
                               (##car _%e266031266150%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl266033266155%_))
                            (let ((_%e266034266158%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl266033266155%_))))
                              (let ((_%tl266036266163%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e266034266158%_)))
                                    (_%hd266035266161%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e266034266158%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd266035266161%_))
                                    (let ((_%e266037266166%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd266035266161%_))))
                                      (let ((_%tl266039266171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e266037266166%_)))
                                            (_%hd266038266169%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e266037266166%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl266039266171%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl266036266163%_))
                                                (let ((_%e266040266174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl266036266163%_))))
                                                  (let ((_%tl266042266179%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e266040266174%_)))
                                                        (_%hd266041266177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e266040266174%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl266042266179%_))
                                                        (_%__kont266472266473%_
                                                         _%hd266038266169%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd266035266161%_))
                                                            (let ((_%__splice266476266477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd266035266161%_
                              '0))))
                      (let ((_%tl266052266089%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice266476266477%_ '1)))
                            (_%target266050266087%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice266476266477%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl266052266089%_))
                            (_%__match266525266526%_
                             _%e266031266150%_
                             _%hd266032266153%_
                             _%tl266033266155%_
                             _%e266034266158%_
                             _%hd266035266161%_
                             _%tl266036266163%_
                             _%__splice266476266477%_
                             _%target266050266087%_
                             _%tl266052266089%_)
                            (let ()
                              (declare (not safe))
                              (_%g266028266066%_)))))
                    (let () (declare (not safe)) (_%g266028266066%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd266035266161%_))
                                                    (let ((_%__splice266476266477%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd266035266161%_
                                                              '0))))
                                                      (let ((_%tl266052266089%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice266476266477%_ '1)))
                    (_%target266050266087%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice266476266477%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl266052266089%_))
                    (_%__match266525266526%_
                     _%e266031266150%_
                     _%hd266032266153%_
                     _%tl266033266155%_
                     _%e266034266158%_
                     _%hd266035266161%_
                     _%tl266036266163%_
                     _%__splice266476266477%_
                     _%target266050266087%_
                     _%tl266052266089%_)
                    (let () (declare (not safe)) (_%g266028266066%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g266028266066%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd266035266161%_))
                                                (let ((_%__splice266476266477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd266035266161%_
                                                          '0))))
                                                  (let ((_%tl266052266089%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice266476266477%_
                                                            '1)))
                                                        (_%target266050266087%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice266476266477%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl266052266089%_))
                                                        (_%__match266525266526%_
                                                         _%e266031266150%_
                                                         _%hd266032266153%_
                                                         _%tl266033266155%_
                                                         _%e266034266158%_
                                                         _%hd266035266161%_
                                                         _%tl266036266163%_
                                                         _%__splice266476266477%_
                                                         _%target266050266087%_
                                                         _%tl266052266089%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g266028266066%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g266028266066%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd266035266161%_))
                                        (let ((_%__splice266476266477%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd266035266161%_
                                                  '0))))
                                          (let ((_%tl266052266089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice266476266477%_
                                                    '1)))
                                                (_%target266050266087%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice266476266477%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl266052266089%_))
                                                (_%__match266525266526%_
                                                 _%e266031266150%_
                                                 _%hd266032266153%_
                                                 _%tl266033266155%_
                                                 _%e266034266158%_
                                                 _%hd266035266161%_
                                                 _%tl266036266163%_
                                                 _%__splice266476266477%_
                                                 _%target266050266087%_
                                                 _%tl266052266089%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g266028266066%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g266028266066%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g266028266066%_)))))
                    (let () (declare (not safe)) (_%g266028266066%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self265575%_ _%stx265576%_)
        (let* ((_%__stx266528266529%_ _%stx265576%_)
               (_%g265580265682%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266528266529%_)))))
          (let ((_%__kont266530266531%_
                 (lambda (_%g265582265972%_
                          _%g265583265973%_
                          _%g265584265974%_
                          _%g265585265975%_
                          _%g265586265976%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g265585265975%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g265584265974%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g265583265973%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g265582265972%_))
                                                 '())))))))
                (_%__kont266532266533%_
                 (lambda (_%g265635265798%_
                          _%g265636265799%_
                          _%g265637265800%_
                          _%g265638265801%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g265637265800%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g265636265799%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g265635265798%_))
                                           (cons '#f '())))))))
                (_%__kont266534266535%_ (lambda () '(begin))))
            (let ((_%__match266663266664%_
                   (lambda (_%e265587265844%_
                            _%hd265588265847%_
                            _%tl265589265849%_
                            _%e265590265852%_
                            _%hd265591265855%_
                            _%tl265592265857%_
                            _%e265593265860%_
                            _%hd265594265863%_
                            _%tl265595265865%_
                            _%e265596265868%_
                            _%hd265597265871%_
                            _%tl265598265873%_
                            _%e265599265876%_
                            _%hd265600265879%_
                            _%tl265601265881%_
                            _%e265602265884%_
                            _%hd265603265887%_
                            _%tl265604265889%_
                            _%e265605265892%_
                            _%hd265606265895%_
                            _%tl265607265897%_
                            _%e265608265900%_
                            _%hd265609265903%_
                            _%tl265610265905%_
                            _%e265611265908%_
                            _%hd265612265911%_
                            _%tl265613265913%_
                            _%e265614265916%_
                            _%hd265615265919%_
                            _%tl265616265921%_
                            _%e265617265924%_
                            _%hd265618265927%_
                            _%tl265619265929%_
                            _%e265620265932%_
                            _%hd265621265935%_
                            _%tl265622265937%_
                            _%e265623265940%_
                            _%hd265624265943%_
                            _%tl265625265945%_
                            _%e265626265948%_
                            _%hd265627265951%_
                            _%tl265628265953%_
                            _%e265629265956%_
                            _%hd265630265959%_
                            _%tl265631265961%_
                            _%e265632265964%_
                            _%hd265633265967%_
                            _%tl265634265969%_)
                     (let ((_%g265582265972%_ _%hd265633265967%_)
                           (_%g265583265973%_ _%hd265624265943%_)
                           (_%g265584265974%_ _%hd265615265919%_)
                           (_%g265585265975%_ _%hd265606265895%_)
                           (_%g265586265976%_ _%hd265597265871%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g265586265976%_
                              'bind-method!))
                           (_%__kont266530266531%_
                            _%g265582265972%_
                            _%g265583265973%_
                            _%g265584265974%_
                            _%g265585265975%_
                            _%g265586265976%_)
                           (_%__kont266534266535%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx266528266529%_))
                  (let ((_%e265587265844%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx266528266529%_))))
                    (let ((_%tl265589265849%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265587265844%_)))
                          (_%hd265588265847%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265587265844%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl265589265849%_))
                          (let ((_%e265590265852%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl265589265849%_))))
                            (let ((_%tl265592265857%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265590265852%_)))
                                  (_%hd265591265855%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265590265852%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd265591265855%_))
                                  (let ((_%e265593265860%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd265591265855%_))))
                                    (let ((_%tl265595265865%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e265593265860%_)))
                                          (_%hd265594265863%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e265593265860%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd265594265863%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd265594265863%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265595265865%_))
                                                  (let ((_%e265596265868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl265595265865%_))))
                                                    (let ((_%tl265598265873%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265596265868%_)))
                                                          (_%hd265597265871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265596265868%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl265598265873%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl265592265857%_))
                      (let ((_%e265599265876%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl265592265857%_))))
                        (let ((_%tl265601265881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265599265876%_)))
                              (_%hd265600265879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265599265876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd265600265879%_))
                              (let ((_%e265602265884%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd265600265879%_))))
                                (let ((_%tl265604265889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e265602265884%_)))
                                      (_%hd265603265887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e265602265884%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd265603265887%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd265603265887%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl265604265889%_))
                                              (let ((_%e265605265892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl265604265889%_))))
                                                (let ((_%tl265607265897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e265605265892%_)))
                                                      (_%hd265606265895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e265605265892%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl265607265897%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl265601265881%_))
                                                          (let ((_%e265608265900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl265601265881%_))))
                    (let ((_%tl265610265905%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265608265900%_)))
                          (_%hd265609265903%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265608265900%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd265609265903%_))
                          (let ((_%e265611265908%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd265609265903%_))))
                            (let ((_%tl265613265913%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e265611265908%_)))
                                  (_%hd265612265911%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e265611265908%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd265612265911%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd265612265911%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl265613265913%_))
                                          (let ((_%e265614265916%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl265613265913%_))))
                                            (let ((_%tl265616265921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e265614265916%_)))
                                                  (_%hd265615265919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e265614265916%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl265616265921%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl265610265905%_))
                                                      (let ((_%e265617265924%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl265610265905%_))))
                (let ((_%tl265619265929%_
                       (let () (declare (not safe)) (##cdr _%e265617265924%_)))
                      (_%hd265618265927%_
                       (let ()
                         (declare (not safe))
                         (##car _%e265617265924%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd265618265927%_))
                      (let ((_%e265620265932%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd265618265927%_))))
                        (let ((_%tl265622265937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e265620265932%_)))
                              (_%hd265621265935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e265620265932%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd265621265935%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd265621265935%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl265622265937%_))
                                      (let ((_%e265623265940%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl265622265937%_))))
                                        (let ((_%tl265625265945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e265623265940%_)))
                                              (_%hd265624265943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e265623265940%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265625265945%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl265619265929%_))
                                                  (let ((_%e265626265948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl265619265929%_))))
                                                    (let ((_%tl265628265953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e265626265948%_)))
                                                          (_%hd265627265951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e265626265948%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd265627265951%_))
                                                          (let ((_%e265629265956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd265627265951%_))))
                    (let ((_%tl265631265961%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e265629265956%_)))
                          (_%hd265630265959%_
                           (let ()
                             (declare (not safe))
                             (##car _%e265629265956%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd265630265959%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd265630265959%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl265631265961%_))
                                  (let ((_%e265632265964%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl265631265961%_))))
                                    (let ((_%tl265634265969%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e265632265964%_)))
                                          (_%hd265633265967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e265632265964%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl265634265969%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl265628265953%_))
                                              (_%__match266663266664%_
                                               _%e265587265844%_
                                               _%hd265588265847%_
                                               _%tl265589265849%_
                                               _%e265590265852%_
                                               _%hd265591265855%_
                                               _%tl265592265857%_
                                               _%e265593265860%_
                                               _%hd265594265863%_
                                               _%tl265595265865%_
                                               _%e265596265868%_
                                               _%hd265597265871%_
                                               _%tl265598265873%_
                                               _%e265599265876%_
                                               _%hd265600265879%_
                                               _%tl265601265881%_
                                               _%e265602265884%_
                                               _%hd265603265887%_
                                               _%tl265604265889%_
                                               _%e265605265892%_
                                               _%hd265606265895%_
                                               _%tl265607265897%_
                                               _%e265608265900%_
                                               _%hd265609265903%_
                                               _%tl265610265905%_
                                               _%e265611265908%_
                                               _%hd265612265911%_
                                               _%tl265613265913%_
                                               _%e265614265916%_
                                               _%hd265615265919%_
                                               _%tl265616265921%_
                                               _%e265617265924%_
                                               _%hd265618265927%_
                                               _%tl265619265929%_
                                               _%e265620265932%_
                                               _%hd265621265935%_
                                               _%tl265622265937%_
                                               _%e265623265940%_
                                               _%hd265624265943%_
                                               _%tl265625265945%_
                                               _%e265626265948%_
                                               _%hd265627265951%_
                                               _%tl265628265953%_
                                               _%e265629265956%_
                                               _%hd265630265959%_
                                               _%tl265631265961%_
                                               _%e265632265964%_
                                               _%hd265633265967%_
                                               _%tl265634265969%_)
                                              (_%__kont266534266535%_))
                                          (_%__kont266534266535%_))))
                                  (_%__kont266534266535%_))
                              (_%__kont266534266535%_))
                          (_%__kont266534266535%_))))
                  (_%__kont266534266535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl265619265929%_))
                                                      (if (let ((__tmp266886
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp266886 'bind-method!))
                  (let ((_%g265635265798%_ _%hd265624265943%_)
                        (_%g265636265799%_ _%hd265615265919%_)
                        (_%g265637265800%_ _%hd265606265895%_)
                        (_%g265638265801%_ _%hd265597265871%_))
                    (_%__kont266532266533%_
                     _%g265635265798%_
                     _%g265636265799%_
                     _%g265637265800%_
                     _%g265638265801%_))
                  (_%__kont266534266535%_))
              (_%__kont266534266535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont266534266535%_))))
                                      (_%__kont266534266535%_))
                                  (_%__kont266534266535%_))
                              (_%__kont266534266535%_))))
                      (_%__kont266534266535%_))))
              (_%__kont266534266535%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont266534266535%_))))
                                          (_%__kont266534266535%_))
                                      (_%__kont266534266535%_))
                                  (_%__kont266534266535%_))))
                          (_%__kont266534266535%_))))
                  (_%__kont266534266535%_))
              (_%__kont266534266535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont266534266535%_))
                                          (_%__kont266534266535%_))
                                      (_%__kont266534266535%_))))
                              (_%__kont266534266535%_))))
                      (_%__kont266534266535%_))
                  (_%__kont266534266535%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont266534266535%_))
                                              (_%__kont266534266535%_))
                                          (_%__kont266534266535%_))))
                                  (_%__kont266534266535%_))))
                          (_%__kont266534266535%_))))
                  (_%__kont266534266535%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self265399%_ _%stx265400%_)
        (let* ((_%__stx266772266773%_ _%stx265400%_)
               (_%g265403265443%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266772266773%_)))))
          (let ((_%__kont266774266775%_
                 (lambda (_%g265405265549%_ _%g265406265550%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g265406265550%_))
                               (cons _%g265405265549%_ '())))))
                (_%__kont266776266777%_
                 (lambda (_%g265428265472%_ _%g265429265473%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266772266773%_))
                (let ((_%e265407265493%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx266772266773%_))))
                  (let ((_%tl265409265498%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e265407265493%_)))
                        (_%hd265408265496%_
                         (let ()
                           (declare (not safe))
                           (##car _%e265407265493%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl265409265498%_))
                        (let ((_%e265410265501%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl265409265498%_))))
                          (let ((_%tl265412265506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e265410265501%_)))
                                (_%hd265411265504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e265410265501%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd265411265504%_))
                                (let ((_%e265413265509%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd265411265504%_))))
                                  (let ((_%tl265415265514%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e265413265509%_)))
                                        (_%hd265414265512%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e265413265509%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd265414265512%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd265414265512%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl265415265514%_))
                                                (let ((_%e265416265517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl265415265514%_))))
                                                  (let ((_%tl265418265522%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e265416265517%_)))
                                                        (_%hd265417265520%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e265416265517%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl265418265522%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl265412265506%_))
                                                            (let ((_%e265419265525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl265412265506%_))))
                      (let ((_%tl265421265530%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e265419265525%_)))
                            (_%hd265420265528%_
                             (let ()
                               (declare (not safe))
                               (##car _%e265419265525%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd265420265528%_))
                            (let ((_%e265422265533%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd265420265528%_))))
                              (let ((_%tl265424265538%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e265422265533%_)))
                                    (_%hd265423265536%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e265422265533%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd265423265536%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd265423265536%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl265424265538%_))
                                            (let ((_%e265425265541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl265424265538%_))))
                                              (let ((_%tl265427265546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265425265541%_)))
                                                    (_%hd265426265544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265425265541%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl265427265546%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl265421265530%_))
                                                        (_%__kont266774266775%_
                                                         _%hd265426265544%_
                                                         _%hd265417265520%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g265403265443%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl265421265530%_))
                                                        (_%__kont266776266777%_
                                                         _%hd265420265528%_
                                                         _%hd265411265504%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g265403265443%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl265421265530%_))
                                                (_%__kont266776266777%_
                                                 _%hd265420265528%_
                                                 _%hd265411265504%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g265403265443%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl265421265530%_))
                                            (_%__kont266776266777%_
                                             _%hd265420265528%_
                                             _%hd265411265504%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g265403265443%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl265421265530%_))
                                        (_%__kont266776266777%_
                                         _%hd265420265528%_
                                         _%hd265411265504%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g265403265443%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl265421265530%_))
                                (_%__kont266776266777%_
                                 _%hd265420265528%_
                                 _%hd265411265504%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g265403265443%_))))))
                    (let () (declare (not safe)) (_%g265403265443%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl265412265506%_))
                    (let ((_%e265436265464%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl265412265506%_))))
                      (let ((_%tl265438265469%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e265436265464%_)))
                            (_%hd265437265467%_
                             (let ()
                               (declare (not safe))
                               (##car _%e265436265464%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl265438265469%_))
                            (_%__kont266776266777%_
                             _%hd265437265467%_
                             _%hd265411265504%_)
                            (let ()
                              (declare (not safe))
                              (_%g265403265443%_)))))
                    (let () (declare (not safe)) (_%g265403265443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl265412265506%_))
                                                    (let ((_%e265436265464%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl265412265506%_))))
                                                      (let ((_%tl265438265469%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e265436265464%_)))
                    (_%hd265437265467%_
                     (let () (declare (not safe)) (##car _%e265436265464%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl265438265469%_))
                    (_%__kont266776266777%_
                     _%hd265437265467%_
                     _%hd265411265504%_)
                    (let () (declare (not safe)) (_%g265403265443%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g265403265443%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl265412265506%_))
                                                (let ((_%e265436265464%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl265412265506%_))))
                                                  (let ((_%tl265438265469%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e265436265464%_)))
                                                        (_%hd265437265467%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e265436265464%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl265438265469%_))
                                                        (_%__kont266776266777%_
                                                         _%hd265437265467%_
                                                         _%hd265411265504%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g265403265443%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g265403265443%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl265412265506%_))
                                            (let ((_%e265436265464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl265412265506%_))))
                                              (let ((_%tl265438265469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e265436265464%_)))
                                                    (_%hd265437265467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e265436265464%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl265438265469%_))
                                                    (_%__kont266776266777%_
                                                     _%hd265437265467%_
                                                     _%hd265411265504%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g265403265443%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g265403265443%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl265412265506%_))
                                    (let ((_%e265436265464%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl265412265506%_))))
                                      (let ((_%tl265438265469%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e265436265464%_)))
                                            (_%hd265437265467%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e265436265464%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl265438265469%_))
                                            (_%__kont266776266777%_
                                             _%hd265437265467%_
                                             _%hd265411265504%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g265403265443%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g265403265443%_))))))
                        (let () (declare (not safe)) (_%g265403265443%_)))))
                (let () (declare (not safe)) (_%g265403265443%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self265386%_)
        (let ((_%self265389%_ _%self265386%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265389%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self265160%_)
        (let* ((_%self265163%_ _%self265160%_)
               (_%self265172265188%_ _%self265163%_)
               (_%E265174265191%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self265172265188%_
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
               (_%K265175265206%_
                (lambda (_%methods265194%_
                         _%metaclass265195%_
                         _%system?265196%_
                         _%final?265197%_
                         _%struct?265198%_
                         _%constructor265199%_
                         _%fields265200%_
                         _%slots265201%_
                         _%precendence-list265202%_
                         _%super265203%_
                         _%id265204%_)
                  (cons '@class
                        (cons _%id265204%_
                              (cons _%super265203%_
                                    (cons _%precendence-list265202%_
                                          (cons _%slots265201%_
                                                (cons _%fields265200%_
                                                      (cons _%constructor265199%_
                                                            (cons _%struct?265198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?265197%_
                                (cons _%system?265196%_
                                      (cons _%metaclass265195%_
                                            (cons (if _%methods265194%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods265194%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e265176265209%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '1 '#f '#f)))
               (_%id265212%_ _%e265176265209%_)
               (_%e265177265214%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '2 '#f '#f)))
               (_%super265217%_ _%e265177265214%_)
               (_%e265178265219%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '3 '#f '#f)))
               (_%precendence-list265222%_ _%e265178265219%_)
               (_%e265179265224%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '4 '#f '#f)))
               (_%slots265227%_ _%e265179265224%_)
               (_%e265180265229%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '5 '#f '#f)))
               (_%fields265232%_ _%e265180265229%_)
               (_%e265181265234%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '6 '#f '#f)))
               (_%constructor265237%_ _%e265181265234%_)
               (_%e265182265239%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '7 '#f '#f)))
               (_%struct?265242%_ _%e265182265239%_)
               (_%e265183265244%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '8 '#f '#f)))
               (_%final?265247%_ _%e265183265244%_)
               (_%e265184265249%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self265172265188%_ '9 '#f '#f)))
               (_%system?265252%_ _%e265184265249%_)
               (_%e265185265254%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self265172265188%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass265257%_ _%e265185265254%_)
               (_%e265186265259%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self265172265188%_
                   '11
                   '#f
                   '#f)))
               (_%methods265262%_ _%e265186265259%_))
          (_%K265175265206%_
           _%methods265262%_
           _%metaclass265257%_
           _%system?265252%_
           _%final?265247%_
           _%struct?265242%_
           _%constructor265237%_
           _%fields265232%_
           _%slots265227%_
           _%precendence-list265222%_
           _%super265217%_
           _%id265212%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self265025%_)
        (let ((_%self265028%_ _%self265025%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self265028%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self264890%_)
        (let ((_%self264893%_ _%self264890%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264893%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self264755%_)
        (let ((_%self264758%_ _%self264755%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264758%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self264758%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264758%_
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
      (lambda (_%self264620%_)
        (let ((_%self264623%_ _%self264620%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264623%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self264623%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264623%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self264485%_)
        (let ((_%self264488%_ _%self264485%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264488%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self264488%_
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
      (lambda (_%self264299%_)
        (let* ((_%self264302%_ _%self264299%_)
               (_%self264311264320%_ _%self264302%_)
               (_%E264313264323%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self264311264320%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K264314264342%_
                (lambda (_%dispatch264326%_
                         _%arity264327%_
                         _%signature264328%_)
                  (if _%signature264328%_
                      (let ((_%signature264330%_ _%signature264328%_))
                        (cons '@lambda
                              (cons _%arity264327%_
                                    (cons _%dispatch264326%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature264330%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature264330%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature264330%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature264330%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature264330%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity264327%_
                                  (cons _%dispatch264326%_ '()))))))
               (_%e264315264345%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self264311264320%_ '1 '#f '#f)))
               (_%e264316264348%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self264311264320%_ '2 '#f '#f)))
               (_%signature264351%_ _%e264316264348%_)
               (_%e264317264353%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self264311264320%_ '3 '#f '#f)))
               (_%arity264356%_ _%e264317264353%_)
               (_%e264318264358%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self264311264320%_ '4 '#f '#f)))
               (_%dispatch264361%_ _%e264318264358%_))
          (_%K264314264342%_
           _%dispatch264361%_
           _%arity264356%_
           _%signature264351%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self264159%_)
        (let ((_%self264162%_ _%self264159%_))
          (letrec ((_%clause-e264173%_
                    (lambda (_%clause264175%_)
                      (cdr (let ((__method266860
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause264175%_
                                     'typedecl))))
                             (if __method266860
                                 (let ()
                                   (declare (not safe))
                                   (__method266860 _%clause264175%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause264175%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e264173%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self264162%_
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
      (lambda (_%self264024%_)
        (let ((_%self264027%_ _%self264024%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264027%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self264027%_
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
      (lambda (_%self263889%_)
        (let ((_%self263892%_ _%self263889%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263892%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self263892%_
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
      (lambda (_%self263754%_)
        (let ((_%self263757%_ _%self263754%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263757%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
