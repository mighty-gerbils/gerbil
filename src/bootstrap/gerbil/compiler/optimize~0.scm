(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1773012993)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp258918
                   (let ((__obj258912
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
                       (gxc#optimizer-info:::init! __obj258912))
                     __obj258912)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp258918)))))
    (define gxc#optimize!
      (lambda (_%ctx258520%_)
        (let ((__tmp258920
               (lambda ()
                 (let ((__tmp258922
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx258520%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx258520%_)
                          (let ((__tmp258924
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp258923
                                 (##structure-ref
                                  _%ctx258520%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258924 __tmp258923 '#t))
                          (let ((_%code258524%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx258520%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx258520%_
                             _%code258524%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp258921
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp258922
                    gxc#current-compile-local-type
                    __tmp258921))))
              (__tmp258919 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258920
           gxc#current-compile-mutators
           __tmp258919))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx258506%_)
        (letrec ((_%load-it!258508%_
                  (lambda (_%id258518%_)
                    (if (let ((__tmp258925
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp258925 _%id258518%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id258518%_)
                          (let ((__tmp258926
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258926 _%id258518%_ '#t)))))))
          (let* ((_%modid258510%_
                  (##structure-ref
                   _%ctx258506%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str258512%_ (symbol->string _%modid258510%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str258512%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str258512%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!258508%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!258508%_
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
      (lambda (_%ctx258443%_)
        (letrec* ((_%deps258445%_
                   (let* ((_%imports258496%_
                           (##structure-ref
                            _%ctx258443%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e258498%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx258443%_))))
                     (if _%$e258498%_
                         ((lambda (_%g258500258502%_)
                            (cons _%g258500258502%_ _%imports258496%_))
                          _%$e258498%_)
                         _%imports258496%_))))
          (let _%lp258447%_ ((_%rest258449%_ _%deps258445%_))
            (let* ((_%rest258450258458%_ _%rest258449%_)
                   (_%else258452258466%_ (lambda () '#!void))
                   (_%K258454258484%_
                    (lambda (_%rest258469%_ _%hd258470%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd258470%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp258928
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp258927
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd258470%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp258928 __tmp258927))
                                '#!void
                                (begin
                                  (let ((_%$e258473%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd258470%_))))
                                    (if _%$e258473%_
                                        ((lambda (_%pre258476%_)
                                           (_%lp258447%_
                                            (cons _%pre258476%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd258470%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e258473%_)
                                        (_%lp258447%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd258470%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd258470%_)))
                            (_%lp258447%_ _%rest258469%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd258470%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp258930
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp258929
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd258470%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp258930 __tmp258929))
                                    '#!void
                                    (begin
                                      (_%lp258447%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd258470%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd258470%_)))
                                (_%lp258447%_ _%rest258469%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd258470%_
                                     'gx#module-import::t))
                                  (_%lp258447%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd258470%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest258469%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd258470%_
                                         'gx#module-export::t))
                                      (_%lp258447%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd258470%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest258469%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd258470%_
                                             'gx#import-set::t))
                                          (_%lp258447%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd258470%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest258469%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd258470%_))))))))))
              (if (pair? _%rest258450258458%_)
                  (let ((_%hd258455258487%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258450258458%_)))
                        (_%tl258456258489%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258450258458%_))))
                    (let* ((_%hd258492%_ _%hd258455258487%_)
                           (_%rest258494%_ _%tl258456258489%_))
                      (_%K258454258484%_ _%rest258494%_ _%hd258492%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx258423%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx258423%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx258423%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht258425%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id258427%_
                    (##structure-ref
                     _%ctx258423%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod258429%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht258425%_ _%id258427%_)))
                   (_%$e258432%_ _%mod258429%_))
              (if _%$e258432%_
                  _%$e258432%_
                  (let* ((_%mod258435%_
                          (gxc#optimizer-import-ssxi _%ctx258423%_))
                         (_%val258440%_
                          (let ((_%$e258437%_ _%mod258435%_))
                            (if _%$e258437%_ _%$e258437%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht258425%_ _%id258427%_ _%val258440%_))
                    _%val258440%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx258421%_)
        (if (##structure-ref _%ctx258421%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx258421%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id258399%_)
        (letrec ((_%catch-e258401%_
                  (lambda (_%exn258419%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn258419%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn258419%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id258399%_))))
                    '#f))
                 (_%import-e258402%_
                  (lambda ()
                    (let* ((_%str-id258405%_
                            (let ((__tmp258931
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id258399%_))))
                              (declare (not safe))
                              (##string-append __tmp258931 '".ssxi")))
                           (_%artefact-path258412%_
                            (let ((_%odir258406258408%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir258406258408%_
                                  (let ((_%odir258410%_ _%odir258406258408%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id258405%_
                                        '".ss"))
                                     _%odir258410%_))
                                  '#f)))
                           (_%library-path258414%_
                            (let ((__tmp258932
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id258405%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp258932)))
                           (_%ssxi-path258416%_
                            (if (and _%artefact-path258412%_
                                     (file-exists? _%artefact-path258412%_))
                                _%artefact-path258412%_
                                _%library-path258414%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path258416%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path258416%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e258401%_ _%import-e258402%_)))))
    (define gxc#optimize-source
      (lambda (_%stx258384%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx258384%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx258384%_))
        (let* ((_%stx258386%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx258384%_)))
               (_%stx258388%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx258386%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx258388%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx258388%_))
          (let _%fixpoint258391%_ ((_%current258393%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx258388%_))
            (let ((_%refined258395%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current258393%_ _%refined258395%_)
                  '#!void
                  (_%fixpoint258391%_ _%refined258395%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx258388%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx258388%_))
          (let ((_%stx258397%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx258388%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx258397%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp258934 (list gxc#::generate-runtime-empty::t))
            (__tmp258933 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp258934
         '()
         __tmp258933
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args258381%_
        (apply make-instance gxc#::generate-ssxi::t _%$args258381%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp258935
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
        (__make-atomic-promise __tmp258935)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx258373%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self258376%_
                (let ((__obj258914
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj258914))
               (__tmp258936
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self258376%_ _%stx258373%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258936
           gxc#current-compile-method
           _%self258376%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self258333%_ _%stx258334%_)
        (let* ((_%g258336258346%_
                (lambda (_%g258337258343%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258337258343%_))))
               (_%g258335258370%_
                (lambda (_%g258337258349%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258337258349%_))
                      (let ((_%e258339258351%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g258337258349%_))))
                        (let ((_%hd258340258354%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258339258351%_)))
                              (_%tl258341258356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258339258351%_))))
                          ((lambda (_%g258338258359%_)
                             (let ((__tmp258939
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self258333%_
                                         _%stx258334%_))))
                                   (__tmp258937
                                    (let ((__tmp258938
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp258938 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp258939
                                gx#current-expander-phi
                                __tmp258937)))
                           _%tl258341258356%_)))
                      (_%g258336258346%_ _%g258337258349%_)))))
          (_%g258335258370%_ _%stx258334%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self258272%_ _%stx258273%_)
        (let* ((_%g258275258289%_
                (lambda (_%g258276258286%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258276258286%_))))
               (_%g258274258330%_
                (lambda (_%g258276258292%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258276258292%_))
                      (let ((_%e258279258294%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g258276258292%_))))
                        (let ((_%hd258280258297%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258279258294%_)))
                              (_%tl258281258299%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258279258294%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258281258299%_))
                              (let ((_%e258282258302%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl258281258299%_))))
                                (let ((_%hd258283258305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258282258302%_)))
                                      (_%tl258284258307%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258282258302%_))))
                                  ((lambda (_%g258277258310%_
                                            _%g258278258311%_)
                                     (let* ((_%ctx258324%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g258278258311%_)))
                                            (_%code258326%_
                                             (##structure-ref
                                              _%ctx258324%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp258940
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self258272%_
                                                  _%code258326%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp258940
                                        gx#current-expander-context
                                        _%ctx258324%_)))
                                   _%tl258284258307%_
                                   _%hd258283258305%_)))
                              (_%g258275258289%_ _%g258276258292%_))))
                      (_%g258275258289%_ _%g258276258292%_)))))
          (_%g258274258330%_ _%stx258273%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self258079%_ _%stx258080%_)
        (letrec ((_%generate-e258082%_
                  (lambda (_%id258257%_)
                    (let* ((_%sym258259%_
                            (if (let ((__tmp258941
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp258941))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id258257%_))
                                '#f))
                           (_%$e258261%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym258259%_))))
                      (if _%$e258261%_
                          ((lambda (_%klass258264%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym258259%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym258259%_
                                                     (cons (let ((__method258915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass258264%_ 'typedecl))))
                     (if __method258915
                         (let ()
                           (declare (not safe))
                           (__method258915 _%klass258264%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass258264%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym258259%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym258259%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e258261%_)
                          (let ((_%$e258266%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym258259%_))))
                            (if _%$e258266%_
                                ((lambda (_%type258269%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym258259%_
                                      '" "
                                      _%type258269%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type258269%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym258259%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym258259%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type258269%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym258259%_
                                                   (cons (let ((__method258916
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type258269%_ 'typedecl))))
                   (if __method258916
                       (let ()
                         (declare (not safe))
                         (__method258916 _%type258269%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type258269%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e258266%_)
                                '(begin))))))))
          (let* ((_%__stx258527258528%_ _%stx258080%_)
                 (_%g258085258123%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx258527258528%_)))))
            (let ((_%__kont258529258530%_
                   (lambda (_%g258087258239%_)
                     (_%generate-e258082%_ _%g258087258239%_)))
                  (_%__kont258531258532%_
                   (lambda (_%g258100258174%_)
                     (let ((_%types258200%_
                            (map _%generate-e258082%_
                                 (let ((__tmp258942
                                        (lambda (_%g258192258195%_
                                                 _%g258193258197%_)
                                          (cons _%g258192258195%_
                                                _%g258193258197%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp258942
                                    '()
                                    _%g258100258174%_)))))
                       (cons 'begin _%types258200%_)))))
              (let ((_%__match258582258583%_
                     (lambda (_%e258101258128%_
                              _%hd258102258131%_
                              _%tl258103258133%_
                              _%e258104258136%_
                              _%hd258105258139%_
                              _%tl258106258141%_
                              _%__splice258533258534%_
                              _%target258107258144%_
                              _%tl258109258146%_)
                       (letrec ((_%loop258110258149%_
                                 (lambda (_%hd258108258152%_
                                          _%id258114258154%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd258108258152%_))
                                       (let ((_%e258111258156%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd258108258152%_))))
                                         (let ((_%lp-tl258113258161%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e258111258156%_)))
                                               (_%lp-hd258112258159%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e258111258156%_))))
                                           (_%loop258110258149%_
                                            _%lp-tl258113258161%_
                                            (cons _%lp-hd258112258159%_
                                                  _%id258114258154%_))))
                                       (let ((_%id258115258164%_
                                              (reverse _%id258114258154%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl258106258141%_))
                                             (let ((_%e258116258166%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl258106258141%_))))
                                               (let ((_%tl258118258171%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e258116258166%_)))
                                                     (_%hd258117258169%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e258116258166%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl258118258171%_))
                                                     (_%__kont258531258532%_
                                                      _%id258115258164%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g258085258123%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g258085258123%_))))))))
                         (_%loop258110258149%_ _%target258107258144%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx258527258528%_))
                    (let ((_%e258088258207%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx258527258528%_))))
                      (let ((_%tl258090258212%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e258088258207%_)))
                            (_%hd258089258210%_
                             (let ()
                               (declare (not safe))
                               (##car _%e258088258207%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl258090258212%_))
                            (let ((_%e258091258215%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl258090258212%_))))
                              (let ((_%tl258093258220%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e258091258215%_)))
                                    (_%hd258092258218%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e258091258215%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd258092258218%_))
                                    (let ((_%e258094258223%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd258092258218%_))))
                                      (let ((_%tl258096258228%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e258094258223%_)))
                                            (_%hd258095258226%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e258094258223%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl258096258228%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl258093258220%_))
                                                (let ((_%e258097258231%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl258093258220%_))))
                                                  (let ((_%tl258099258236%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e258097258231%_)))
                                                        (_%hd258098258234%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e258097258231%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl258099258236%_))
                                                        (_%__kont258529258530%_
                                                         _%hd258095258226%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd258092258218%_))
                                                            (let ((_%__splice258533258534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd258092258218%_
                              '0))))
                      (let ((_%tl258109258146%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice258533258534%_ '1)))
                            (_%target258107258144%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice258533258534%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl258109258146%_))
                            (_%__match258582258583%_
                             _%e258088258207%_
                             _%hd258089258210%_
                             _%tl258090258212%_
                             _%e258091258215%_
                             _%hd258092258218%_
                             _%tl258093258220%_
                             _%__splice258533258534%_
                             _%target258107258144%_
                             _%tl258109258146%_)
                            (let ()
                              (declare (not safe))
                              (_%g258085258123%_)))))
                    (let () (declare (not safe)) (_%g258085258123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd258092258218%_))
                                                    (let ((_%__splice258533258534%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd258092258218%_
                                                              '0))))
                                                      (let ((_%tl258109258146%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice258533258534%_ '1)))
                    (_%target258107258144%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice258533258534%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl258109258146%_))
                    (_%__match258582258583%_
                     _%e258088258207%_
                     _%hd258089258210%_
                     _%tl258090258212%_
                     _%e258091258215%_
                     _%hd258092258218%_
                     _%tl258093258220%_
                     _%__splice258533258534%_
                     _%target258107258144%_
                     _%tl258109258146%_)
                    (let () (declare (not safe)) (_%g258085258123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g258085258123%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd258092258218%_))
                                                (let ((_%__splice258533258534%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd258092258218%_
                                                          '0))))
                                                  (let ((_%tl258109258146%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice258533258534%_
                                                            '1)))
                                                        (_%target258107258144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice258533258534%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl258109258146%_))
                                                        (_%__match258582258583%_
                                                         _%e258088258207%_
                                                         _%hd258089258210%_
                                                         _%tl258090258212%_
                                                         _%e258091258215%_
                                                         _%hd258092258218%_
                                                         _%tl258093258220%_
                                                         _%__splice258533258534%_
                                                         _%target258107258144%_
                                                         _%tl258109258146%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g258085258123%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258085258123%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd258092258218%_))
                                        (let ((_%__splice258533258534%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd258092258218%_
                                                  '0))))
                                          (let ((_%tl258109258146%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice258533258534%_
                                                    '1)))
                                                (_%target258107258144%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice258533258534%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258109258146%_))
                                                (_%__match258582258583%_
                                                 _%e258088258207%_
                                                 _%hd258089258210%_
                                                 _%tl258090258212%_
                                                 _%e258091258215%_
                                                 _%hd258092258218%_
                                                 _%tl258093258220%_
                                                 _%__splice258533258534%_
                                                 _%target258107258144%_
                                                 _%tl258109258146%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258085258123%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g258085258123%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g258085258123%_)))))
                    (let () (declare (not safe)) (_%g258085258123%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self257632%_ _%stx257633%_)
        (let* ((_%__stx258585258586%_ _%stx257633%_)
               (_%g257637257739%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258585258586%_)))))
          (let ((_%__kont258587258588%_
                 (lambda (_%g257639258029%_
                          _%g257640258030%_
                          _%g257641258031%_
                          _%g257642258032%_
                          _%g257643258033%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257642258032%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257641258031%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257640258030%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g257639258029%_))
                                                 '())))))))
                (_%__kont258589258590%_
                 (lambda (_%g257692257855%_
                          _%g257693257856%_
                          _%g257694257857%_
                          _%g257695257858%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257694257857%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257693257856%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257692257855%_))
                                           (cons '#f '())))))))
                (_%__kont258591258592%_ (lambda () '(begin))))
            (let ((_%__match258720258721%_
                   (lambda (_%e257644257901%_
                            _%hd257645257904%_
                            _%tl257646257906%_
                            _%e257647257909%_
                            _%hd257648257912%_
                            _%tl257649257914%_
                            _%e257650257917%_
                            _%hd257651257920%_
                            _%tl257652257922%_
                            _%e257653257925%_
                            _%hd257654257928%_
                            _%tl257655257930%_
                            _%e257656257933%_
                            _%hd257657257936%_
                            _%tl257658257938%_
                            _%e257659257941%_
                            _%hd257660257944%_
                            _%tl257661257946%_
                            _%e257662257949%_
                            _%hd257663257952%_
                            _%tl257664257954%_
                            _%e257665257957%_
                            _%hd257666257960%_
                            _%tl257667257962%_
                            _%e257668257965%_
                            _%hd257669257968%_
                            _%tl257670257970%_
                            _%e257671257973%_
                            _%hd257672257976%_
                            _%tl257673257978%_
                            _%e257674257981%_
                            _%hd257675257984%_
                            _%tl257676257986%_
                            _%e257677257989%_
                            _%hd257678257992%_
                            _%tl257679257994%_
                            _%e257680257997%_
                            _%hd257681258000%_
                            _%tl257682258002%_
                            _%e257683258005%_
                            _%hd257684258008%_
                            _%tl257685258010%_
                            _%e257686258013%_
                            _%hd257687258016%_
                            _%tl257688258018%_
                            _%e257689258021%_
                            _%hd257690258024%_
                            _%tl257691258026%_)
                     (let ((_%g257639258029%_ _%hd257690258024%_)
                           (_%g257640258030%_ _%hd257681258000%_)
                           (_%g257641258031%_ _%hd257672257976%_)
                           (_%g257642258032%_ _%hd257663257952%_)
                           (_%g257643258033%_ _%hd257654257928%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g257643258033%_
                              'bind-method!))
                           (_%__kont258587258588%_
                            _%g257639258029%_
                            _%g257640258030%_
                            _%g257641258031%_
                            _%g257642258032%_
                            _%g257643258033%_)
                           (_%__kont258591258592%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx258585258586%_))
                  (let ((_%e257644257901%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx258585258586%_))))
                    (let ((_%tl257646257906%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257644257901%_)))
                          (_%hd257645257904%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257644257901%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257646257906%_))
                          (let ((_%e257647257909%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl257646257906%_))))
                            (let ((_%tl257649257914%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257647257909%_)))
                                  (_%hd257648257912%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257647257909%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd257648257912%_))
                                  (let ((_%e257650257917%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd257648257912%_))))
                                    (let ((_%tl257652257922%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257650257917%_)))
                                          (_%hd257651257920%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257650257917%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd257651257920%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd257651257920%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257652257922%_))
                                                  (let ((_%e257653257925%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257652257922%_))))
                                                    (let ((_%tl257655257930%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257653257925%_)))
                                                          (_%hd257654257928%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257653257925%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl257655257930%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl257649257914%_))
                      (let ((_%e257656257933%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl257649257914%_))))
                        (let ((_%tl257658257938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257656257933%_)))
                              (_%hd257657257936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257656257933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd257657257936%_))
                              (let ((_%e257659257941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd257657257936%_))))
                                (let ((_%tl257661257946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257659257941%_)))
                                      (_%hd257660257944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257659257941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd257660257944%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd257660257944%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257661257946%_))
                                              (let ((_%e257662257949%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl257661257946%_))))
                                                (let ((_%tl257664257954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257662257949%_)))
                                                      (_%hd257663257952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257662257949%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257664257954%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl257658257938%_))
                                                          (let ((_%e257665257957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl257658257938%_))))
                    (let ((_%tl257667257962%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257665257957%_)))
                          (_%hd257666257960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257665257957%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd257666257960%_))
                          (let ((_%e257668257965%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd257666257960%_))))
                            (let ((_%tl257670257970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257668257965%_)))
                                  (_%hd257669257968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257668257965%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd257669257968%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd257669257968%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl257670257970%_))
                                          (let ((_%e257671257973%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl257670257970%_))))
                                            (let ((_%tl257673257978%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e257671257973%_)))
                                                  (_%hd257672257976%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e257671257973%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl257673257978%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257667257962%_))
                                                      (let ((_%e257674257981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl257667257962%_))))
                (let ((_%tl257676257986%_
                       (let () (declare (not safe)) (##cdr _%e257674257981%_)))
                      (_%hd257675257984%_
                       (let ()
                         (declare (not safe))
                         (##car _%e257674257981%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd257675257984%_))
                      (let ((_%e257677257989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd257675257984%_))))
                        (let ((_%tl257679257994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257677257989%_)))
                              (_%hd257678257992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257677257989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd257678257992%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd257678257992%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257679257994%_))
                                      (let ((_%e257680257997%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl257679257994%_))))
                                        (let ((_%tl257682258002%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257680257997%_)))
                                              (_%hd257681258000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257680257997%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257682258002%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257676257986%_))
                                                  (let ((_%e257683258005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257676257986%_))))
                                                    (let ((_%tl257685258010%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257683258005%_)))
                                                          (_%hd257684258008%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257683258005%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd257684258008%_))
                                                          (let ((_%e257686258013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd257684258008%_))))
                    (let ((_%tl257688258018%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257686258013%_)))
                          (_%hd257687258016%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257686258013%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd257687258016%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd257687258016%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl257688258018%_))
                                  (let ((_%e257689258021%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl257688258018%_))))
                                    (let ((_%tl257691258026%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257689258021%_)))
                                          (_%hd257690258024%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257689258021%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl257691258026%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257685258010%_))
                                              (_%__match258720258721%_
                                               _%e257644257901%_
                                               _%hd257645257904%_
                                               _%tl257646257906%_
                                               _%e257647257909%_
                                               _%hd257648257912%_
                                               _%tl257649257914%_
                                               _%e257650257917%_
                                               _%hd257651257920%_
                                               _%tl257652257922%_
                                               _%e257653257925%_
                                               _%hd257654257928%_
                                               _%tl257655257930%_
                                               _%e257656257933%_
                                               _%hd257657257936%_
                                               _%tl257658257938%_
                                               _%e257659257941%_
                                               _%hd257660257944%_
                                               _%tl257661257946%_
                                               _%e257662257949%_
                                               _%hd257663257952%_
                                               _%tl257664257954%_
                                               _%e257665257957%_
                                               _%hd257666257960%_
                                               _%tl257667257962%_
                                               _%e257668257965%_
                                               _%hd257669257968%_
                                               _%tl257670257970%_
                                               _%e257671257973%_
                                               _%hd257672257976%_
                                               _%tl257673257978%_
                                               _%e257674257981%_
                                               _%hd257675257984%_
                                               _%tl257676257986%_
                                               _%e257677257989%_
                                               _%hd257678257992%_
                                               _%tl257679257994%_
                                               _%e257680257997%_
                                               _%hd257681258000%_
                                               _%tl257682258002%_
                                               _%e257683258005%_
                                               _%hd257684258008%_
                                               _%tl257685258010%_
                                               _%e257686258013%_
                                               _%hd257687258016%_
                                               _%tl257688258018%_
                                               _%e257689258021%_
                                               _%hd257690258024%_
                                               _%tl257691258026%_)
                                              (_%__kont258591258592%_))
                                          (_%__kont258591258592%_))))
                                  (_%__kont258591258592%_))
                              (_%__kont258591258592%_))
                          (_%__kont258591258592%_))))
                  (_%__kont258591258592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257676257986%_))
                                                      (if (let ((__tmp258943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp258943 'bind-method!))
                  (let ((_%g257692257855%_ _%hd257681258000%_)
                        (_%g257693257856%_ _%hd257672257976%_)
                        (_%g257694257857%_ _%hd257663257952%_)
                        (_%g257695257858%_ _%hd257654257928%_))
                    (_%__kont258589258590%_
                     _%g257692257855%_
                     _%g257693257856%_
                     _%g257694257857%_
                     _%g257695257858%_))
                  (_%__kont258591258592%_))
              (_%__kont258591258592%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont258591258592%_))))
                                      (_%__kont258591258592%_))
                                  (_%__kont258591258592%_))
                              (_%__kont258591258592%_))))
                      (_%__kont258591258592%_))))
              (_%__kont258591258592%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont258591258592%_))))
                                          (_%__kont258591258592%_))
                                      (_%__kont258591258592%_))
                                  (_%__kont258591258592%_))))
                          (_%__kont258591258592%_))))
                  (_%__kont258591258592%_))
              (_%__kont258591258592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont258591258592%_))
                                          (_%__kont258591258592%_))
                                      (_%__kont258591258592%_))))
                              (_%__kont258591258592%_))))
                      (_%__kont258591258592%_))
                  (_%__kont258591258592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont258591258592%_))
                                              (_%__kont258591258592%_))
                                          (_%__kont258591258592%_))))
                                  (_%__kont258591258592%_))))
                          (_%__kont258591258592%_))))
                  (_%__kont258591258592%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self257456%_ _%stx257457%_)
        (let* ((_%__stx258829258830%_ _%stx257457%_)
               (_%g257460257500%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258829258830%_)))))
          (let ((_%__kont258831258832%_
                 (lambda (_%g257462257606%_ _%g257463257607%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257463257607%_))
                               (cons _%g257462257606%_ '())))))
                (_%__kont258833258834%_
                 (lambda (_%g257485257529%_ _%g257486257530%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx258829258830%_))
                (let ((_%e257464257550%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx258829258830%_))))
                  (let ((_%tl257466257555%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257464257550%_)))
                        (_%hd257465257553%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257464257550%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl257466257555%_))
                        (let ((_%e257467257558%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl257466257555%_))))
                          (let ((_%tl257469257563%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257467257558%_)))
                                (_%hd257468257561%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257467257558%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd257468257561%_))
                                (let ((_%e257470257566%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd257468257561%_))))
                                  (let ((_%tl257472257571%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257470257566%_)))
                                        (_%hd257471257569%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257470257566%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd257471257569%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd257471257569%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257472257571%_))
                                                (let ((_%e257473257574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257472257571%_))))
                                                  (let ((_%tl257475257579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257473257574%_)))
                                                        (_%hd257474257577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257473257574%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257475257579%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl257469257563%_))
                                                            (let ((_%e257476257582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl257469257563%_))))
                      (let ((_%tl257478257587%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257476257582%_)))
                            (_%hd257477257585%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257476257582%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd257477257585%_))
                            (let ((_%e257479257590%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd257477257585%_))))
                              (let ((_%tl257481257595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e257479257590%_)))
                                    (_%hd257480257593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e257479257590%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd257480257593%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd257480257593%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl257481257595%_))
                                            (let ((_%e257482257598%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl257481257595%_))))
                                              (let ((_%tl257484257603%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e257482257598%_)))
                                                    (_%hd257483257601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e257482257598%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl257484257603%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257478257587%_))
                                                        (_%__kont258831258832%_
                                                         _%hd257483257601%_
                                                         _%hd257474257577%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257460257500%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257478257587%_))
                                                        (_%__kont258833258834%_
                                                         _%hd257477257585%_
                                                         _%hd257468257561%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257460257500%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257478257587%_))
                                                (_%__kont258833258834%_
                                                 _%hd257477257585%_
                                                 _%hd257468257561%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257460257500%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257478257587%_))
                                            (_%__kont258833258834%_
                                             _%hd257477257585%_
                                             _%hd257468257561%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g257460257500%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257478257587%_))
                                        (_%__kont258833258834%_
                                         _%hd257477257585%_
                                         _%hd257468257561%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g257460257500%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl257478257587%_))
                                (_%__kont258833258834%_
                                 _%hd257477257585%_
                                 _%hd257468257561%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g257460257500%_))))))
                    (let () (declare (not safe)) (_%g257460257500%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl257469257563%_))
                    (let ((_%e257493257521%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl257469257563%_))))
                      (let ((_%tl257495257526%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257493257521%_)))
                            (_%hd257494257524%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257493257521%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl257495257526%_))
                            (_%__kont258833258834%_
                             _%hd257494257524%_
                             _%hd257468257561%_)
                            (let ()
                              (declare (not safe))
                              (_%g257460257500%_)))))
                    (let () (declare (not safe)) (_%g257460257500%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl257469257563%_))
                                                    (let ((_%e257493257521%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl257469257563%_))))
                                                      (let ((_%tl257495257526%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e257493257521%_)))
                    (_%hd257494257524%_
                     (let () (declare (not safe)) (##car _%e257493257521%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl257495257526%_))
                    (_%__kont258833258834%_
                     _%hd257494257524%_
                     _%hd257468257561%_)
                    (let () (declare (not safe)) (_%g257460257500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257460257500%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257469257563%_))
                                                (let ((_%e257493257521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257469257563%_))))
                                                  (let ((_%tl257495257526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257493257521%_)))
                                                        (_%hd257494257524%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257493257521%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257495257526%_))
                                                        (_%__kont258833258834%_
                                                         _%hd257494257524%_
                                                         _%hd257468257561%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257460257500%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257460257500%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl257469257563%_))
                                            (let ((_%e257493257521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl257469257563%_))))
                                              (let ((_%tl257495257526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e257493257521%_)))
                                                    (_%hd257494257524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e257493257521%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl257495257526%_))
                                                    (_%__kont258833258834%_
                                                     _%hd257494257524%_
                                                     _%hd257468257561%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257460257500%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g257460257500%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl257469257563%_))
                                    (let ((_%e257493257521%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl257469257563%_))))
                                      (let ((_%tl257495257526%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e257493257521%_)))
                                            (_%hd257494257524%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e257493257521%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257495257526%_))
                                            (_%__kont258833258834%_
                                             _%hd257494257524%_
                                             _%hd257468257561%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g257460257500%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g257460257500%_))))))
                        (let () (declare (not safe)) (_%g257460257500%_)))))
                (let () (declare (not safe)) (_%g257460257500%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self257443%_)
        (let ((_%self257446%_ _%self257443%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257446%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self257217%_)
        (let* ((_%self257220%_ _%self257217%_)
               (_%self257229257245%_ _%self257220%_)
               (_%E257231257248%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self257229257245%_
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
               (_%K257232257263%_
                (lambda (_%methods257251%_
                         _%metaclass257252%_
                         _%system?257253%_
                         _%final?257254%_
                         _%struct?257255%_
                         _%constructor257256%_
                         _%fields257257%_
                         _%slots257258%_
                         _%precendence-list257259%_
                         _%super257260%_
                         _%id257261%_)
                  (cons '@class
                        (cons _%id257261%_
                              (cons _%super257260%_
                                    (cons _%precendence-list257259%_
                                          (cons _%slots257258%_
                                                (cons _%fields257257%_
                                                      (cons _%constructor257256%_
                                                            (cons _%struct?257255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?257254%_
                                (cons _%system?257253%_
                                      (cons _%metaclass257252%_
                                            (cons (if _%methods257251%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods257251%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e257233257266%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '1 '#f '#f)))
               (_%id257269%_ _%e257233257266%_)
               (_%e257234257271%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '2 '#f '#f)))
               (_%super257274%_ _%e257234257271%_)
               (_%e257235257276%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '3 '#f '#f)))
               (_%precendence-list257279%_ _%e257235257276%_)
               (_%e257236257281%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '4 '#f '#f)))
               (_%slots257284%_ _%e257236257281%_)
               (_%e257237257286%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '5 '#f '#f)))
               (_%fields257289%_ _%e257237257286%_)
               (_%e257238257291%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '6 '#f '#f)))
               (_%constructor257294%_ _%e257238257291%_)
               (_%e257239257296%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '7 '#f '#f)))
               (_%struct?257299%_ _%e257239257296%_)
               (_%e257240257301%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '8 '#f '#f)))
               (_%final?257304%_ _%e257240257301%_)
               (_%e257241257306%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257229257245%_ '9 '#f '#f)))
               (_%system?257309%_ _%e257241257306%_)
               (_%e257242257311%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self257229257245%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass257314%_ _%e257242257311%_)
               (_%e257243257316%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self257229257245%_
                   '11
                   '#f
                   '#f)))
               (_%methods257319%_ _%e257243257316%_))
          (_%K257232257263%_
           _%methods257319%_
           _%metaclass257314%_
           _%system?257309%_
           _%final?257304%_
           _%struct?257299%_
           _%constructor257294%_
           _%fields257289%_
           _%slots257284%_
           _%precendence-list257279%_
           _%super257274%_
           _%id257269%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self257082%_)
        (let ((_%self257085%_ _%self257082%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257085%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self256947%_)
        (let ((_%self256950%_ _%self256947%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256950%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self256812%_)
        (let ((_%self256815%_ _%self256812%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256815%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256815%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256815%_
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
      (lambda (_%self256677%_)
        (let ((_%self256680%_ _%self256677%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256680%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256680%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256680%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self256542%_)
        (let ((_%self256545%_ _%self256542%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256545%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256545%_
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
      (lambda (_%self256356%_)
        (let* ((_%self256359%_ _%self256356%_)
               (_%self256368256377%_ _%self256359%_)
               (_%E256370256380%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self256368256377%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K256371256399%_
                (lambda (_%dispatch256383%_
                         _%arity256384%_
                         _%signature256385%_)
                  (if _%signature256385%_
                      (let ((_%signature256387%_ _%signature256385%_))
                        (cons '@lambda
                              (cons _%arity256384%_
                                    (cons _%dispatch256383%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature256387%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature256387%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature256387%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature256387%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature256387%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity256384%_
                                  (cons _%dispatch256383%_ '()))))))
               (_%e256372256402%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256368256377%_ '1 '#f '#f)))
               (_%e256373256405%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256368256377%_ '2 '#f '#f)))
               (_%signature256408%_ _%e256373256405%_)
               (_%e256374256410%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256368256377%_ '3 '#f '#f)))
               (_%arity256413%_ _%e256374256410%_)
               (_%e256375256415%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256368256377%_ '4 '#f '#f)))
               (_%dispatch256418%_ _%e256375256415%_))
          (_%K256371256399%_
           _%dispatch256418%_
           _%arity256413%_
           _%signature256408%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self256216%_)
        (let ((_%self256219%_ _%self256216%_))
          (letrec ((_%clause-e256230%_
                    (lambda (_%clause256232%_)
                      (cdr (let ((__method258917
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause256232%_
                                     'typedecl))))
                             (if __method258917
                                 (let ()
                                   (declare (not safe))
                                   (__method258917 _%clause256232%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause256232%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e256230%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self256219%_
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
      (lambda (_%self256081%_)
        (let ((_%self256084%_ _%self256081%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256084%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256084%_
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
      (lambda (_%self255946%_)
        (let ((_%self255949%_ _%self255946%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255949%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255949%_
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
      (lambda (_%self255811%_)
        (let ((_%self255814%_ _%self255811%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255814%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
