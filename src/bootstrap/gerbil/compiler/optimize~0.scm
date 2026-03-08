(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1773009284)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp258908
                   (let ((__obj258902
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
                       (gxc#optimizer-info:::init! __obj258902))
                     __obj258902)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp258908)))))
    (define gxc#optimize!
      (lambda (_%ctx258510%_)
        (let ((__tmp258910
               (lambda ()
                 (let ((__tmp258912
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx258510%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx258510%_)
                          (let ((__tmp258914
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp258913
                                 (##structure-ref
                                  _%ctx258510%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258914 __tmp258913 '#t))
                          (let ((_%code258514%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx258510%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx258510%_
                             _%code258514%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp258911
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp258912
                    gxc#current-compile-local-type
                    __tmp258911))))
              (__tmp258909 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258910
           gxc#current-compile-mutators
           __tmp258909))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx258496%_)
        (letrec ((_%load-it!258498%_
                  (lambda (_%id258508%_)
                    (if (let ((__tmp258915
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp258915 _%id258508%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id258508%_)
                          (let ((__tmp258916
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp258916 _%id258508%_ '#t)))))))
          (let* ((_%modid258500%_
                  (##structure-ref
                   _%ctx258496%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str258502%_ (symbol->string _%modid258500%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str258502%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str258502%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!258498%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!258498%_
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
      (lambda (_%ctx258433%_)
        (letrec* ((_%deps258435%_
                   (let* ((_%imports258486%_
                           (##structure-ref
                            _%ctx258433%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e258488%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx258433%_))))
                     (if _%$e258488%_
                         ((lambda (_%g258490258492%_)
                            (cons _%g258490258492%_ _%imports258486%_))
                          _%$e258488%_)
                         _%imports258486%_))))
          (let _%lp258437%_ ((_%rest258439%_ _%deps258435%_))
            (let* ((_%rest258440258448%_ _%rest258439%_)
                   (_%else258442258456%_ (lambda () '#!void))
                   (_%K258444258474%_
                    (lambda (_%rest258459%_ _%hd258460%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd258460%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp258918
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp258917
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd258460%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp258918 __tmp258917))
                                '#!void
                                (begin
                                  (let ((_%$e258463%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd258460%_))))
                                    (if _%$e258463%_
                                        ((lambda (_%pre258466%_)
                                           (_%lp258437%_
                                            (cons _%pre258466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd258460%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e258463%_)
                                        (_%lp258437%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd258460%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd258460%_)))
                            (_%lp258437%_ _%rest258459%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd258460%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp258920
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp258919
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd258460%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp258920 __tmp258919))
                                    '#!void
                                    (begin
                                      (_%lp258437%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd258460%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd258460%_)))
                                (_%lp258437%_ _%rest258459%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd258460%_
                                     'gx#module-import::t))
                                  (_%lp258437%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd258460%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest258459%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd258460%_
                                         'gx#module-export::t))
                                      (_%lp258437%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd258460%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest258459%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd258460%_
                                             'gx#import-set::t))
                                          (_%lp258437%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd258460%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest258459%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd258460%_))))))))))
              (if (pair? _%rest258440258448%_)
                  (let ((_%hd258445258477%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest258440258448%_)))
                        (_%tl258446258479%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest258440258448%_))))
                    (let* ((_%hd258482%_ _%hd258445258477%_)
                           (_%rest258484%_ _%tl258446258479%_))
                      (_%K258444258474%_ _%rest258484%_ _%hd258482%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx258413%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx258413%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx258413%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht258415%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id258417%_
                    (##structure-ref
                     _%ctx258413%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod258419%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht258415%_ _%id258417%_)))
                   (_%$e258422%_ _%mod258419%_))
              (if _%$e258422%_
                  _%$e258422%_
                  (let* ((_%mod258425%_
                          (gxc#optimizer-import-ssxi _%ctx258413%_))
                         (_%val258430%_
                          (let ((_%$e258427%_ _%mod258425%_))
                            (if _%$e258427%_ _%$e258427%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht258415%_ _%id258417%_ _%val258430%_))
                    _%val258430%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx258411%_)
        (if (##structure-ref _%ctx258411%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx258411%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id258389%_)
        (letrec ((_%catch-e258391%_
                  (lambda (_%exn258409%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn258409%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn258409%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id258389%_))))
                    '#f))
                 (_%import-e258392%_
                  (lambda ()
                    (let* ((_%str-id258395%_
                            (let ((__tmp258921
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id258389%_))))
                              (declare (not safe))
                              (##string-append __tmp258921 '".ssxi")))
                           (_%artefact-path258402%_
                            (let ((_%odir258396258398%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir258396258398%_
                                  (let ((_%odir258400%_ _%odir258396258398%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id258395%_
                                        '".ss"))
                                     _%odir258400%_))
                                  '#f)))
                           (_%library-path258404%_
                            (let ((__tmp258922
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id258395%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp258922)))
                           (_%ssxi-path258406%_
                            (if (and _%artefact-path258402%_
                                     (file-exists? _%artefact-path258402%_))
                                _%artefact-path258402%_
                                _%library-path258404%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path258406%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path258406%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e258391%_ _%import-e258392%_)))))
    (define gxc#optimize-source
      (lambda (_%stx258374%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx258374%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx258374%_))
        (let* ((_%stx258376%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx258374%_)))
               (_%stx258378%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx258376%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx258378%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx258378%_))
          (let _%fixpoint258381%_ ((_%current258383%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx258378%_))
            (let ((_%refined258385%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current258383%_ _%refined258385%_)
                  '#!void
                  (_%fixpoint258381%_ _%refined258385%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx258378%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx258378%_))
          (let ((_%stx258387%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx258378%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx258387%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp258924 (list gxc#::generate-runtime-empty::t))
            (__tmp258923 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp258924
         '()
         __tmp258923
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args258371%_
        (apply make-instance gxc#::generate-ssxi::t _%$args258371%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp258925
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
        (__make-atomic-promise __tmp258925)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx258363%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self258366%_
                (let ((__obj258904
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj258904))
               (__tmp258926
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self258366%_ _%stx258363%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp258926
           gxc#current-compile-method
           _%self258366%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self258323%_ _%stx258324%_)
        (let* ((_%g258326258336%_
                (lambda (_%g258327258333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258327258333%_))))
               (_%g258325258360%_
                (lambda (_%g258327258339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258327258339%_))
                      (let ((_%e258329258341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g258327258339%_))))
                        (let ((_%hd258330258344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258329258341%_)))
                              (_%tl258331258346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258329258341%_))))
                          ((lambda (_%g258328258349%_)
                             (let ((__tmp258929
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self258323%_
                                         _%stx258324%_))))
                                   (__tmp258927
                                    (let ((__tmp258928
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp258928 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp258929
                                gx#current-expander-phi
                                __tmp258927)))
                           _%tl258331258346%_)))
                      (_%g258326258336%_ _%g258327258339%_)))))
          (_%g258325258360%_ _%stx258324%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self258262%_ _%stx258263%_)
        (let* ((_%g258265258279%_
                (lambda (_%g258266258276%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g258266258276%_))))
               (_%g258264258320%_
                (lambda (_%g258266258282%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g258266258282%_))
                      (let ((_%e258269258284%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g258266258282%_))))
                        (let ((_%hd258270258287%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e258269258284%_)))
                              (_%tl258271258289%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e258269258284%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl258271258289%_))
                              (let ((_%e258272258292%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl258271258289%_))))
                                (let ((_%hd258273258295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e258272258292%_)))
                                      (_%tl258274258297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e258272258292%_))))
                                  ((lambda (_%g258267258300%_
                                            _%g258268258301%_)
                                     (let* ((_%ctx258314%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g258268258301%_)))
                                            (_%code258316%_
                                             (##structure-ref
                                              _%ctx258314%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp258930
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self258262%_
                                                  _%code258316%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp258930
                                        gx#current-expander-context
                                        _%ctx258314%_)))
                                   _%tl258274258297%_
                                   _%hd258273258295%_)))
                              (_%g258265258279%_ _%g258266258282%_))))
                      (_%g258265258279%_ _%g258266258282%_)))))
          (_%g258264258320%_ _%stx258263%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self258069%_ _%stx258070%_)
        (letrec ((_%generate-e258072%_
                  (lambda (_%id258247%_)
                    (let* ((_%sym258249%_
                            (if (let ((__tmp258931
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp258931))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id258247%_))
                                '#f))
                           (_%$e258251%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym258249%_))))
                      (if _%$e258251%_
                          ((lambda (_%klass258254%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym258249%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym258249%_
                                                     (cons (let ((__method258905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass258254%_ 'typedecl))))
                     (if __method258905
                         (let ()
                           (declare (not safe))
                           (__method258905 _%klass258254%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass258254%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym258249%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym258249%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e258251%_)
                          (let ((_%$e258256%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym258249%_))))
                            (if _%$e258256%_
                                ((lambda (_%type258259%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym258249%_
                                      '" "
                                      _%type258259%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type258259%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym258249%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym258249%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type258259%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym258249%_
                                                   (cons (let ((__method258906
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type258259%_ 'typedecl))))
                   (if __method258906
                       (let ()
                         (declare (not safe))
                         (__method258906 _%type258259%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type258259%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e258256%_)
                                '(begin))))))))
          (let* ((_%__stx258517258518%_ _%stx258070%_)
                 (_%g258075258113%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx258517258518%_)))))
            (let ((_%__kont258519258520%_
                   (lambda (_%g258077258229%_)
                     (_%generate-e258072%_ _%g258077258229%_)))
                  (_%__kont258521258522%_
                   (lambda (_%g258090258164%_)
                     (let ((_%types258190%_
                            (map _%generate-e258072%_
                                 (let ((__tmp258932
                                        (lambda (_%g258182258185%_
                                                 _%g258183258187%_)
                                          (cons _%g258182258185%_
                                                _%g258183258187%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp258932
                                    '()
                                    _%g258090258164%_)))))
                       (cons 'begin _%types258190%_)))))
              (let ((_%__match258572258573%_
                     (lambda (_%e258091258118%_
                              _%hd258092258121%_
                              _%tl258093258123%_
                              _%e258094258126%_
                              _%hd258095258129%_
                              _%tl258096258131%_
                              _%__splice258523258524%_
                              _%target258097258134%_
                              _%tl258099258136%_)
                       (letrec ((_%loop258100258139%_
                                 (lambda (_%hd258098258142%_
                                          _%id258104258144%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd258098258142%_))
                                       (let ((_%e258101258146%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd258098258142%_))))
                                         (let ((_%lp-tl258103258151%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e258101258146%_)))
                                               (_%lp-hd258102258149%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e258101258146%_))))
                                           (_%loop258100258139%_
                                            _%lp-tl258103258151%_
                                            (cons _%lp-hd258102258149%_
                                                  _%id258104258144%_))))
                                       (let ((_%id258105258154%_
                                              (reverse _%id258104258144%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl258096258131%_))
                                             (let ((_%e258106258156%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl258096258131%_))))
                                               (let ((_%tl258108258161%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e258106258156%_)))
                                                     (_%hd258107258159%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e258106258156%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl258108258161%_))
                                                     (_%__kont258521258522%_
                                                      _%id258105258154%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g258075258113%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g258075258113%_))))))))
                         (_%loop258100258139%_ _%target258097258134%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx258517258518%_))
                    (let ((_%e258078258197%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx258517258518%_))))
                      (let ((_%tl258080258202%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e258078258197%_)))
                            (_%hd258079258200%_
                             (let ()
                               (declare (not safe))
                               (##car _%e258078258197%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl258080258202%_))
                            (let ((_%e258081258205%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl258080258202%_))))
                              (let ((_%tl258083258210%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e258081258205%_)))
                                    (_%hd258082258208%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e258081258205%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd258082258208%_))
                                    (let ((_%e258084258213%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd258082258208%_))))
                                      (let ((_%tl258086258218%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e258084258213%_)))
                                            (_%hd258085258216%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e258084258213%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl258086258218%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl258083258210%_))
                                                (let ((_%e258087258221%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl258083258210%_))))
                                                  (let ((_%tl258089258226%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e258087258221%_)))
                                                        (_%hd258088258224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e258087258221%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl258089258226%_))
                                                        (_%__kont258519258520%_
                                                         _%hd258085258216%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd258082258208%_))
                                                            (let ((_%__splice258523258524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd258082258208%_
                              '0))))
                      (let ((_%tl258099258136%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice258523258524%_ '1)))
                            (_%target258097258134%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice258523258524%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl258099258136%_))
                            (_%__match258572258573%_
                             _%e258078258197%_
                             _%hd258079258200%_
                             _%tl258080258202%_
                             _%e258081258205%_
                             _%hd258082258208%_
                             _%tl258083258210%_
                             _%__splice258523258524%_
                             _%target258097258134%_
                             _%tl258099258136%_)
                            (let ()
                              (declare (not safe))
                              (_%g258075258113%_)))))
                    (let () (declare (not safe)) (_%g258075258113%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd258082258208%_))
                                                    (let ((_%__splice258523258524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd258082258208%_
                                                              '0))))
                                                      (let ((_%tl258099258136%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice258523258524%_ '1)))
                    (_%target258097258134%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice258523258524%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl258099258136%_))
                    (_%__match258572258573%_
                     _%e258078258197%_
                     _%hd258079258200%_
                     _%tl258080258202%_
                     _%e258081258205%_
                     _%hd258082258208%_
                     _%tl258083258210%_
                     _%__splice258523258524%_
                     _%target258097258134%_
                     _%tl258099258136%_)
                    (let () (declare (not safe)) (_%g258075258113%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g258075258113%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd258082258208%_))
                                                (let ((_%__splice258523258524%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd258082258208%_
                                                          '0))))
                                                  (let ((_%tl258099258136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice258523258524%_
                                                            '1)))
                                                        (_%target258097258134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice258523258524%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl258099258136%_))
                                                        (_%__match258572258573%_
                                                         _%e258078258197%_
                                                         _%hd258079258200%_
                                                         _%tl258080258202%_
                                                         _%e258081258205%_
                                                         _%hd258082258208%_
                                                         _%tl258083258210%_
                                                         _%__splice258523258524%_
                                                         _%target258097258134%_
                                                         _%tl258099258136%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g258075258113%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258075258113%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd258082258208%_))
                                        (let ((_%__splice258523258524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd258082258208%_
                                                  '0))))
                                          (let ((_%tl258099258136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice258523258524%_
                                                    '1)))
                                                (_%target258097258134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice258523258524%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl258099258136%_))
                                                (_%__match258572258573%_
                                                 _%e258078258197%_
                                                 _%hd258079258200%_
                                                 _%tl258080258202%_
                                                 _%e258081258205%_
                                                 _%hd258082258208%_
                                                 _%tl258083258210%_
                                                 _%__splice258523258524%_
                                                 _%target258097258134%_
                                                 _%tl258099258136%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g258075258113%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g258075258113%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g258075258113%_)))))
                    (let () (declare (not safe)) (_%g258075258113%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self257622%_ _%stx257623%_)
        (let* ((_%__stx258575258576%_ _%stx257623%_)
               (_%g257627257729%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258575258576%_)))))
          (let ((_%__kont258577258578%_
                 (lambda (_%g257629258019%_
                          _%g257630258020%_
                          _%g257631258021%_
                          _%g257632258022%_
                          _%g257633258023%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257632258022%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257631258021%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257630258020%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g257629258019%_))
                                                 '())))))))
                (_%__kont258579258580%_
                 (lambda (_%g257682257845%_
                          _%g257683257846%_
                          _%g257684257847%_
                          _%g257685257848%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257684257847%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g257683257846%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g257682257845%_))
                                           (cons '#f '())))))))
                (_%__kont258581258582%_ (lambda () '(begin))))
            (let ((_%__match258710258711%_
                   (lambda (_%e257634257891%_
                            _%hd257635257894%_
                            _%tl257636257896%_
                            _%e257637257899%_
                            _%hd257638257902%_
                            _%tl257639257904%_
                            _%e257640257907%_
                            _%hd257641257910%_
                            _%tl257642257912%_
                            _%e257643257915%_
                            _%hd257644257918%_
                            _%tl257645257920%_
                            _%e257646257923%_
                            _%hd257647257926%_
                            _%tl257648257928%_
                            _%e257649257931%_
                            _%hd257650257934%_
                            _%tl257651257936%_
                            _%e257652257939%_
                            _%hd257653257942%_
                            _%tl257654257944%_
                            _%e257655257947%_
                            _%hd257656257950%_
                            _%tl257657257952%_
                            _%e257658257955%_
                            _%hd257659257958%_
                            _%tl257660257960%_
                            _%e257661257963%_
                            _%hd257662257966%_
                            _%tl257663257968%_
                            _%e257664257971%_
                            _%hd257665257974%_
                            _%tl257666257976%_
                            _%e257667257979%_
                            _%hd257668257982%_
                            _%tl257669257984%_
                            _%e257670257987%_
                            _%hd257671257990%_
                            _%tl257672257992%_
                            _%e257673257995%_
                            _%hd257674257998%_
                            _%tl257675258000%_
                            _%e257676258003%_
                            _%hd257677258006%_
                            _%tl257678258008%_
                            _%e257679258011%_
                            _%hd257680258014%_
                            _%tl257681258016%_)
                     (let ((_%g257629258019%_ _%hd257680258014%_)
                           (_%g257630258020%_ _%hd257671257990%_)
                           (_%g257631258021%_ _%hd257662257966%_)
                           (_%g257632258022%_ _%hd257653257942%_)
                           (_%g257633258023%_ _%hd257644257918%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g257633258023%_
                              'bind-method!))
                           (_%__kont258577258578%_
                            _%g257629258019%_
                            _%g257630258020%_
                            _%g257631258021%_
                            _%g257632258022%_
                            _%g257633258023%_)
                           (_%__kont258581258582%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx258575258576%_))
                  (let ((_%e257634257891%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx258575258576%_))))
                    (let ((_%tl257636257896%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257634257891%_)))
                          (_%hd257635257894%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257634257891%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl257636257896%_))
                          (let ((_%e257637257899%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl257636257896%_))))
                            (let ((_%tl257639257904%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257637257899%_)))
                                  (_%hd257638257902%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257637257899%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd257638257902%_))
                                  (let ((_%e257640257907%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd257638257902%_))))
                                    (let ((_%tl257642257912%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257640257907%_)))
                                          (_%hd257641257910%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257640257907%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd257641257910%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd257641257910%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257642257912%_))
                                                  (let ((_%e257643257915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257642257912%_))))
                                                    (let ((_%tl257645257920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257643257915%_)))
                                                          (_%hd257644257918%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257643257915%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl257645257920%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl257639257904%_))
                      (let ((_%e257646257923%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl257639257904%_))))
                        (let ((_%tl257648257928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257646257923%_)))
                              (_%hd257647257926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257646257923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd257647257926%_))
                              (let ((_%e257649257931%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd257647257926%_))))
                                (let ((_%tl257651257936%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e257649257931%_)))
                                      (_%hd257650257934%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e257649257931%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd257650257934%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd257650257934%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl257651257936%_))
                                              (let ((_%e257652257939%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl257651257936%_))))
                                                (let ((_%tl257654257944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e257652257939%_)))
                                                      (_%hd257653257942%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e257652257939%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257654257944%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl257648257928%_))
                                                          (let ((_%e257655257947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl257648257928%_))))
                    (let ((_%tl257657257952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257655257947%_)))
                          (_%hd257656257950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257655257947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd257656257950%_))
                          (let ((_%e257658257955%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd257656257950%_))))
                            (let ((_%tl257660257960%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e257658257955%_)))
                                  (_%hd257659257958%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e257658257955%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd257659257958%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd257659257958%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl257660257960%_))
                                          (let ((_%e257661257963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl257660257960%_))))
                                            (let ((_%tl257663257968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e257661257963%_)))
                                                  (_%hd257662257966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e257661257963%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl257663257968%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl257657257952%_))
                                                      (let ((_%e257664257971%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl257657257952%_))))
                (let ((_%tl257666257976%_
                       (let () (declare (not safe)) (##cdr _%e257664257971%_)))
                      (_%hd257665257974%_
                       (let ()
                         (declare (not safe))
                         (##car _%e257664257971%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd257665257974%_))
                      (let ((_%e257667257979%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd257665257974%_))))
                        (let ((_%tl257669257984%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e257667257979%_)))
                              (_%hd257668257982%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e257667257979%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd257668257982%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd257668257982%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl257669257984%_))
                                      (let ((_%e257670257987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl257669257984%_))))
                                        (let ((_%tl257672257992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e257670257987%_)))
                                              (_%hd257671257990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e257670257987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257672257992%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl257666257976%_))
                                                  (let ((_%e257673257995%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl257666257976%_))))
                                                    (let ((_%tl257675258000%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e257673257995%_)))
                                                          (_%hd257674257998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e257673257995%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd257674257998%_))
                                                          (let ((_%e257676258003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd257674257998%_))))
                    (let ((_%tl257678258008%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e257676258003%_)))
                          (_%hd257677258006%_
                           (let ()
                             (declare (not safe))
                             (##car _%e257676258003%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd257677258006%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd257677258006%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl257678258008%_))
                                  (let ((_%e257679258011%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl257678258008%_))))
                                    (let ((_%tl257681258016%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e257679258011%_)))
                                          (_%hd257680258014%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e257679258011%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl257681258016%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl257675258000%_))
                                              (_%__match258710258711%_
                                               _%e257634257891%_
                                               _%hd257635257894%_
                                               _%tl257636257896%_
                                               _%e257637257899%_
                                               _%hd257638257902%_
                                               _%tl257639257904%_
                                               _%e257640257907%_
                                               _%hd257641257910%_
                                               _%tl257642257912%_
                                               _%e257643257915%_
                                               _%hd257644257918%_
                                               _%tl257645257920%_
                                               _%e257646257923%_
                                               _%hd257647257926%_
                                               _%tl257648257928%_
                                               _%e257649257931%_
                                               _%hd257650257934%_
                                               _%tl257651257936%_
                                               _%e257652257939%_
                                               _%hd257653257942%_
                                               _%tl257654257944%_
                                               _%e257655257947%_
                                               _%hd257656257950%_
                                               _%tl257657257952%_
                                               _%e257658257955%_
                                               _%hd257659257958%_
                                               _%tl257660257960%_
                                               _%e257661257963%_
                                               _%hd257662257966%_
                                               _%tl257663257968%_
                                               _%e257664257971%_
                                               _%hd257665257974%_
                                               _%tl257666257976%_
                                               _%e257667257979%_
                                               _%hd257668257982%_
                                               _%tl257669257984%_
                                               _%e257670257987%_
                                               _%hd257671257990%_
                                               _%tl257672257992%_
                                               _%e257673257995%_
                                               _%hd257674257998%_
                                               _%tl257675258000%_
                                               _%e257676258003%_
                                               _%hd257677258006%_
                                               _%tl257678258008%_
                                               _%e257679258011%_
                                               _%hd257680258014%_
                                               _%tl257681258016%_)
                                              (_%__kont258581258582%_))
                                          (_%__kont258581258582%_))))
                                  (_%__kont258581258582%_))
                              (_%__kont258581258582%_))
                          (_%__kont258581258582%_))))
                  (_%__kont258581258582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl257666257976%_))
                                                      (if (let ((__tmp258933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp258933 'bind-method!))
                  (let ((_%g257682257845%_ _%hd257671257990%_)
                        (_%g257683257846%_ _%hd257662257966%_)
                        (_%g257684257847%_ _%hd257653257942%_)
                        (_%g257685257848%_ _%hd257644257918%_))
                    (_%__kont258579258580%_
                     _%g257682257845%_
                     _%g257683257846%_
                     _%g257684257847%_
                     _%g257685257848%_))
                  (_%__kont258581258582%_))
              (_%__kont258581258582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont258581258582%_))))
                                      (_%__kont258581258582%_))
                                  (_%__kont258581258582%_))
                              (_%__kont258581258582%_))))
                      (_%__kont258581258582%_))))
              (_%__kont258581258582%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont258581258582%_))))
                                          (_%__kont258581258582%_))
                                      (_%__kont258581258582%_))
                                  (_%__kont258581258582%_))))
                          (_%__kont258581258582%_))))
                  (_%__kont258581258582%_))
              (_%__kont258581258582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont258581258582%_))
                                          (_%__kont258581258582%_))
                                      (_%__kont258581258582%_))))
                              (_%__kont258581258582%_))))
                      (_%__kont258581258582%_))
                  (_%__kont258581258582%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont258581258582%_))
                                              (_%__kont258581258582%_))
                                          (_%__kont258581258582%_))))
                                  (_%__kont258581258582%_))))
                          (_%__kont258581258582%_))))
                  (_%__kont258581258582%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self257446%_ _%stx257447%_)
        (let* ((_%__stx258819258820%_ _%stx257447%_)
               (_%g257450257490%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx258819258820%_)))))
          (let ((_%__kont258821258822%_
                 (lambda (_%g257452257596%_ _%g257453257597%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g257453257597%_))
                               (cons _%g257452257596%_ '())))))
                (_%__kont258823258824%_
                 (lambda (_%g257475257519%_ _%g257476257520%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx258819258820%_))
                (let ((_%e257454257540%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx258819258820%_))))
                  (let ((_%tl257456257545%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e257454257540%_)))
                        (_%hd257455257543%_
                         (let ()
                           (declare (not safe))
                           (##car _%e257454257540%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl257456257545%_))
                        (let ((_%e257457257548%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl257456257545%_))))
                          (let ((_%tl257459257553%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e257457257548%_)))
                                (_%hd257458257551%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e257457257548%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd257458257551%_))
                                (let ((_%e257460257556%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd257458257551%_))))
                                  (let ((_%tl257462257561%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e257460257556%_)))
                                        (_%hd257461257559%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e257460257556%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd257461257559%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd257461257559%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257462257561%_))
                                                (let ((_%e257463257564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257462257561%_))))
                                                  (let ((_%tl257465257569%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257463257564%_)))
                                                        (_%hd257464257567%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257463257564%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257465257569%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl257459257553%_))
                                                            (let ((_%e257466257572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl257459257553%_))))
                      (let ((_%tl257468257577%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257466257572%_)))
                            (_%hd257467257575%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257466257572%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd257467257575%_))
                            (let ((_%e257469257580%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd257467257575%_))))
                              (let ((_%tl257471257585%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e257469257580%_)))
                                    (_%hd257470257583%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e257469257580%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd257470257583%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd257470257583%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl257471257585%_))
                                            (let ((_%e257472257588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl257471257585%_))))
                                              (let ((_%tl257474257593%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e257472257588%_)))
                                                    (_%hd257473257591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e257472257588%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl257474257593%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257468257577%_))
                                                        (_%__kont258821258822%_
                                                         _%hd257473257591%_
                                                         _%hd257464257567%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257450257490%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257468257577%_))
                                                        (_%__kont258823258824%_
                                                         _%hd257467257575%_
                                                         _%hd257458257551%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257450257490%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl257468257577%_))
                                                (_%__kont258823258824%_
                                                 _%hd257467257575%_
                                                 _%hd257458257551%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257450257490%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257468257577%_))
                                            (_%__kont258823258824%_
                                             _%hd257467257575%_
                                             _%hd257458257551%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g257450257490%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl257468257577%_))
                                        (_%__kont258823258824%_
                                         _%hd257467257575%_
                                         _%hd257458257551%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g257450257490%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl257468257577%_))
                                (_%__kont258823258824%_
                                 _%hd257467257575%_
                                 _%hd257458257551%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g257450257490%_))))))
                    (let () (declare (not safe)) (_%g257450257490%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl257459257553%_))
                    (let ((_%e257483257511%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl257459257553%_))))
                      (let ((_%tl257485257516%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e257483257511%_)))
                            (_%hd257484257514%_
                             (let ()
                               (declare (not safe))
                               (##car _%e257483257511%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl257485257516%_))
                            (_%__kont258823258824%_
                             _%hd257484257514%_
                             _%hd257458257551%_)
                            (let ()
                              (declare (not safe))
                              (_%g257450257490%_)))))
                    (let () (declare (not safe)) (_%g257450257490%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl257459257553%_))
                                                    (let ((_%e257483257511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl257459257553%_))))
                                                      (let ((_%tl257485257516%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e257483257511%_)))
                    (_%hd257484257514%_
                     (let () (declare (not safe)) (##car _%e257483257511%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl257485257516%_))
                    (_%__kont258823258824%_
                     _%hd257484257514%_
                     _%hd257458257551%_)
                    (let () (declare (not safe)) (_%g257450257490%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257450257490%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl257459257553%_))
                                                (let ((_%e257483257511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl257459257553%_))))
                                                  (let ((_%tl257485257516%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e257483257511%_)))
                                                        (_%hd257484257514%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e257483257511%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl257485257516%_))
                                                        (_%__kont258823258824%_
                                                         _%hd257484257514%_
                                                         _%hd257458257551%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g257450257490%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g257450257490%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl257459257553%_))
                                            (let ((_%e257483257511%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl257459257553%_))))
                                              (let ((_%tl257485257516%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e257483257511%_)))
                                                    (_%hd257484257514%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e257483257511%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl257485257516%_))
                                                    (_%__kont258823258824%_
                                                     _%hd257484257514%_
                                                     _%hd257458257551%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g257450257490%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g257450257490%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl257459257553%_))
                                    (let ((_%e257483257511%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl257459257553%_))))
                                      (let ((_%tl257485257516%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e257483257511%_)))
                                            (_%hd257484257514%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e257483257511%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl257485257516%_))
                                            (_%__kont258823258824%_
                                             _%hd257484257514%_
                                             _%hd257458257551%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g257450257490%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g257450257490%_))))))
                        (let () (declare (not safe)) (_%g257450257490%_)))))
                (let () (declare (not safe)) (_%g257450257490%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self257433%_)
        (let ((_%self257436%_ _%self257433%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257436%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self257207%_)
        (let* ((_%self257210%_ _%self257207%_)
               (_%self257219257235%_ _%self257210%_)
               (_%E257221257238%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self257219257235%_
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
               (_%K257222257253%_
                (lambda (_%methods257241%_
                         _%metaclass257242%_
                         _%system?257243%_
                         _%final?257244%_
                         _%struct?257245%_
                         _%constructor257246%_
                         _%fields257247%_
                         _%slots257248%_
                         _%precendence-list257249%_
                         _%super257250%_
                         _%id257251%_)
                  (cons '@class
                        (cons _%id257251%_
                              (cons _%super257250%_
                                    (cons _%precendence-list257249%_
                                          (cons _%slots257248%_
                                                (cons _%fields257247%_
                                                      (cons _%constructor257246%_
                                                            (cons _%struct?257245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?257244%_
                                (cons _%system?257243%_
                                      (cons _%metaclass257242%_
                                            (cons (if _%methods257241%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods257241%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e257223257256%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '1 '#f '#f)))
               (_%id257259%_ _%e257223257256%_)
               (_%e257224257261%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '2 '#f '#f)))
               (_%super257264%_ _%e257224257261%_)
               (_%e257225257266%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '3 '#f '#f)))
               (_%precendence-list257269%_ _%e257225257266%_)
               (_%e257226257271%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '4 '#f '#f)))
               (_%slots257274%_ _%e257226257271%_)
               (_%e257227257276%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '5 '#f '#f)))
               (_%fields257279%_ _%e257227257276%_)
               (_%e257228257281%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '6 '#f '#f)))
               (_%constructor257284%_ _%e257228257281%_)
               (_%e257229257286%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '7 '#f '#f)))
               (_%struct?257289%_ _%e257229257286%_)
               (_%e257230257291%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '8 '#f '#f)))
               (_%final?257294%_ _%e257230257291%_)
               (_%e257231257296%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self257219257235%_ '9 '#f '#f)))
               (_%system?257299%_ _%e257231257296%_)
               (_%e257232257301%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self257219257235%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass257304%_ _%e257232257301%_)
               (_%e257233257306%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self257219257235%_
                   '11
                   '#f
                   '#f)))
               (_%methods257309%_ _%e257233257306%_))
          (_%K257222257253%_
           _%methods257309%_
           _%metaclass257304%_
           _%system?257299%_
           _%final?257294%_
           _%struct?257289%_
           _%constructor257284%_
           _%fields257279%_
           _%slots257274%_
           _%precendence-list257269%_
           _%super257264%_
           _%id257259%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self257072%_)
        (let ((_%self257075%_ _%self257072%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self257075%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self256937%_)
        (let ((_%self256940%_ _%self256937%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256940%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self256802%_)
        (let ((_%self256805%_ _%self256802%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256805%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256805%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256805%_
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
      (lambda (_%self256667%_)
        (let ((_%self256670%_ _%self256667%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256670%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256670%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self256670%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self256532%_)
        (let ((_%self256535%_ _%self256532%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256535%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256535%_
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
      (lambda (_%self256346%_)
        (let* ((_%self256349%_ _%self256346%_)
               (_%self256358256367%_ _%self256349%_)
               (_%E256360256370%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self256358256367%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K256361256389%_
                (lambda (_%dispatch256373%_
                         _%arity256374%_
                         _%signature256375%_)
                  (if _%signature256375%_
                      (let ((_%signature256377%_ _%signature256375%_))
                        (cons '@lambda
                              (cons _%arity256374%_
                                    (cons _%dispatch256373%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature256377%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature256377%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature256377%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature256377%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature256377%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity256374%_
                                  (cons _%dispatch256373%_ '()))))))
               (_%e256362256392%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256358256367%_ '1 '#f '#f)))
               (_%e256363256395%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256358256367%_ '2 '#f '#f)))
               (_%signature256398%_ _%e256363256395%_)
               (_%e256364256400%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256358256367%_ '3 '#f '#f)))
               (_%arity256403%_ _%e256364256400%_)
               (_%e256365256405%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self256358256367%_ '4 '#f '#f)))
               (_%dispatch256408%_ _%e256365256405%_))
          (_%K256361256389%_
           _%dispatch256408%_
           _%arity256403%_
           _%signature256398%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self256206%_)
        (let ((_%self256209%_ _%self256206%_))
          (letrec ((_%clause-e256220%_
                    (lambda (_%clause256222%_)
                      (cdr (let ((__method258907
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause256222%_
                                     'typedecl))))
                             (if __method258907
                                 (let ()
                                   (declare (not safe))
                                   (__method258907 _%clause256222%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause256222%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e256220%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self256209%_
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
      (lambda (_%self256071%_)
        (let ((_%self256074%_ _%self256071%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self256074%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self256074%_
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
      (lambda (_%self255936%_)
        (let ((_%self255939%_ _%self255936%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255939%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self255939%_
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
      (lambda (_%self255801%_)
        (let ((_%self255804%_ _%self255801%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self255804%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
