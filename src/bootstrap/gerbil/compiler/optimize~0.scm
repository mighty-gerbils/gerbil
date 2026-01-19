(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1768864956)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp212682
                   (let ((__obj212676
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
                       (gxc#optimizer-info:::init! __obj212676))
                     __obj212676)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp212682)))))
    (define gxc#optimize!
      (lambda (_%ctx212284%_)
        (let ((__tmp212684
               (lambda ()
                 (let ((__tmp212686
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx212284%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx212284%_)
                          (let ((__tmp212688
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp212687
                                 (##structure-ref
                                  _%ctx212284%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212688 __tmp212687 '#t))
                          (let ((_%code212288%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx212284%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx212284%_
                             _%code212288%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp212685
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp212686
                    gxc#current-compile-local-type
                    __tmp212685))))
              (__tmp212683 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212684
           gxc#current-compile-mutators
           __tmp212683))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx212270%_)
        (letrec ((_%load-it!212272%_
                  (lambda (_%id212282%_)
                    (if (let ((__tmp212689
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp212689 _%id212282%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id212282%_)
                          (let ((__tmp212690
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212690 _%id212282%_ '#t)))))))
          (let* ((_%modid212274%_
                  (##structure-ref
                   _%ctx212270%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str212276%_ (symbol->string _%modid212274%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str212276%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str212276%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212272%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212272%_
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
      (lambda (_%ctx212207%_)
        (letrec* ((_%deps212209%_
                   (let* ((_%imports212260%_
                           (##structure-ref
                            _%ctx212207%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e212262%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx212207%_))))
                     (if _%$e212262%_
                         ((lambda (_%g212264212266%_)
                            (cons _%g212264212266%_ _%imports212260%_))
                          _%$e212262%_)
                         _%imports212260%_))))
          (let _%lp212211%_ ((_%rest212213%_ _%deps212209%_))
            (let* ((_%rest212214212222%_ _%rest212213%_)
                   (_%else212216212230%_ (lambda () '#!void))
                   (_%K212218212248%_
                    (lambda (_%rest212233%_ _%hd212234%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd212234%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp212692
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp212691
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212234%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp212692 __tmp212691))
                                '#!void
                                (begin
                                  (let ((_%$e212237%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd212234%_))))
                                    (if _%$e212237%_
                                        ((lambda (_%pre212240%_)
                                           (_%lp212211%_
                                            (cons _%pre212240%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd212234%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e212237%_)
                                        (_%lp212211%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212234%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd212234%_)))
                            (_%lp212211%_ _%rest212233%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd212234%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp212694
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp212693
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd212234%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp212694 __tmp212693))
                                    '#!void
                                    (begin
                                      (_%lp212211%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212234%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd212234%_)))
                                (_%lp212211%_ _%rest212233%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd212234%_
                                     'gx#module-import::t))
                                  (_%lp212211%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212234%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest212233%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd212234%_
                                         'gx#module-export::t))
                                      (_%lp212211%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd212234%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest212233%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd212234%_
                                             'gx#import-set::t))
                                          (_%lp212211%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd212234%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest212233%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd212234%_))))))))))
              (if (pair? _%rest212214212222%_)
                  (let ((_%hd212219212251%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212214212222%_)))
                        (_%tl212220212253%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212214212222%_))))
                    (let* ((_%hd212256%_ _%hd212219212251%_)
                           (_%rest212258%_ _%tl212220212253%_))
                      (_%K212218212248%_ _%rest212258%_ _%hd212256%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx212187%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx212187%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx212187%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht212189%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id212191%_
                    (##structure-ref
                     _%ctx212187%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod212193%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht212189%_ _%id212191%_)))
                   (_%$e212196%_ _%mod212193%_))
              (if _%$e212196%_
                  _%$e212196%_
                  (let* ((_%mod212199%_
                          (gxc#optimizer-import-ssxi _%ctx212187%_))
                         (_%val212204%_
                          (let ((_%$e212201%_ _%mod212199%_))
                            (if _%$e212201%_ _%$e212201%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht212189%_ _%id212191%_ _%val212204%_))
                    _%val212204%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx212185%_)
        (if (##structure-ref _%ctx212185%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx212185%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id212162%_)
        (letrec ((_%catch-e212164%_
                  (lambda (_%exn212183%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn212183%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn212183%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id212162%_))))
                    '#f))
                 (_%import-e212165%_
                  (lambda ()
                    (let* ((_%str-id212168%_
                            (let ((__tmp212695
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id212162%_))))
                              (declare (not safe))
                              (##string-append __tmp212695 '".ssxi")))
                           (_%artefact-path212176%_
                            (let ((_%odir212169212171%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir212169212171%_
                                  (let ((_%odir212174%_ _%odir212169212171%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id212168%_
                                        '".ss"))
                                     _%odir212174%_))
                                  '#f)))
                           (_%library-path212178%_
                            (let ((__tmp212696
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id212168%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp212696)))
                           (_%ssxi-path212180%_
                            (if (and _%artefact-path212176%_
                                     (file-exists? _%artefact-path212176%_))
                                _%artefact-path212176%_
                                _%library-path212178%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path212180%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path212180%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e212164%_ _%import-e212165%_)))))
    (define gxc#optimize-source
      (lambda (_%stx212147%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx212147%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx212147%_))
        (let* ((_%stx212149%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx212147%_)))
               (_%stx212151%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx212149%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx212151%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx212151%_))
          (let _%fixpoint212154%_ ((_%current212156%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx212151%_))
            (let ((_%refined212158%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current212156%_ _%refined212158%_)
                  '#!void
                  (_%fixpoint212154%_ _%refined212158%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx212151%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx212151%_))
          (let ((_%stx212160%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx212151%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx212160%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp212698 (list gxc#::generate-runtime-empty::t))
            (__tmp212697 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp212698
         '()
         __tmp212697
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args212144%_
        (apply make-instance gxc#::generate-ssxi::t _%$args212144%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp212699
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
        (__make-atomic-promise __tmp212699)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx212136%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self212139%_
                (let ((__obj212678
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj212678))
               (__tmp212700
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self212139%_ _%stx212136%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212700
           gxc#current-compile-method
           _%self212139%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self212096%_ _%stx212097%_)
        (let* ((_%g212099212109%_
                (lambda (_%g212100212106%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212100212106%_))))
               (_%g212098212133%_
                (lambda (_%g212100212112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212100212112%_))
                      (let ((_%e212102212114%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212100212112%_))))
                        (let ((_%hd212103212117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212102212114%_)))
                              (_%tl212104212119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212102212114%_))))
                          ((lambda (_%L212122%_)
                             (let ((__tmp212703
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self212096%_
                                         _%stx212097%_))))
                                   (__tmp212701
                                    (let ((__tmp212702
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp212702 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp212703
                                gx#current-expander-phi
                                __tmp212701)))
                           _%tl212104212119%_)))
                      (_%g212099212109%_ _%g212100212112%_)))))
          (_%g212098212133%_ _%stx212097%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self212035%_ _%stx212036%_)
        (let* ((_%g212038212052%_
                (lambda (_%g212039212049%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212039212049%_))))
               (_%g212037212093%_
                (lambda (_%g212039212055%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212039212055%_))
                      (let ((_%e212042212057%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212039212055%_))))
                        (let ((_%hd212043212060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212042212057%_)))
                              (_%tl212044212062%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212042212057%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212044212062%_))
                              (let ((_%e212045212065%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212044212062%_))))
                                (let ((_%hd212046212068%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212045212065%_)))
                                      (_%tl212047212070%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212045212065%_))))
                                  ((lambda (_%L212073%_ _%L212074%_)
                                     (let* ((_%ctx212087%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L212074%_)))
                                            (_%code212089%_
                                             (##structure-ref
                                              _%ctx212087%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp212704
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self212035%_
                                                  _%code212089%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp212704
                                        gx#current-expander-context
                                        _%ctx212087%_)))
                                   _%tl212047212070%_
                                   _%hd212046212068%_)))
                              (_%g212038212052%_ _%g212039212055%_))))
                      (_%g212038212052%_ _%g212039212055%_)))))
          (_%g212037212093%_ _%stx212036%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self211840%_ _%stx211841%_)
        (letrec ((_%generate-e211843%_
                  (lambda (_%id212020%_)
                    (let* ((_%sym212022%_
                            (if (let ((__tmp212705
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp212705))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id212020%_))
                                '#f))
                           (_%$e212024%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym212022%_))))
                      (if _%$e212024%_
                          ((lambda (_%klass212027%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym212022%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym212022%_
                                                     (cons (let ((__method212679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass212027%_ 'typedecl))))
                     (if __method212679
                         (let ()
                           (declare (not safe))
                           (__method212679 _%klass212027%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass212027%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym212022%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym212022%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e212024%_)
                          (let ((_%$e212029%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym212022%_))))
                            (if _%$e212029%_
                                ((lambda (_%type212032%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym212022%_
                                      '" "
                                      _%type212032%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type212032%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym212022%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym212022%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type212032%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym212022%_
                                                   (cons (let ((__method212680
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type212032%_ 'typedecl))))
                   (if __method212680
                       (let ()
                         (declare (not safe))
                         (__method212680 _%type212032%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type212032%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e212029%_)
                                '(begin))))))))
          (let* ((_%__stx212291212292%_ _%stx211841%_)
                 (_%g211846211884%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx212291212292%_)))))
            (let ((_%__kont212293212294%_
                   (lambda (_%L212002%_) (_%generate-e211843%_ _%L212002%_)))
                  (_%__kont212295212296%_
                   (lambda (_%L211937%_)
                     (let ((_%types211963%_
                            (map _%generate-e211843%_
                                 (let ((__tmp212706
                                        (lambda (_%g211955211958%_
                                                 _%g211956211960%_)
                                          (cons _%g211955211958%_
                                                _%g211956211960%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp212706 '() _%L211937%_)))))
                       (cons 'begin _%types211963%_)))))
              (let ((_%__match212346212347%_
                     (lambda (_%e211862211889%_
                              _%hd211863211892%_
                              _%tl211864211894%_
                              _%e211865211897%_
                              _%hd211866211900%_
                              _%tl211867211902%_
                              _%__splice212297212298%_
                              _%target211868211905%_
                              _%tl211870211907%_)
                       (letrec ((_%loop211871211910%_
                                 (lambda (_%hd211869211913%_
                                          _%id211875211915%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd211869211913%_))
                                       (let ((_%e211872211918%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd211869211913%_))))
                                         (let ((_%lp-tl211874211923%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e211872211918%_)))
                                               (_%lp-hd211873211921%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e211872211918%_))))
                                           (_%loop211871211910%_
                                            _%lp-tl211874211923%_
                                            (cons _%lp-hd211873211921%_
                                                  _%id211875211915%_))))
                                       (let ((_%id211876211926%_
                                              (reverse _%id211875211915%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl211867211902%_))
                                             (let ((_%e211877211929%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl211867211902%_))))
                                               (let ((_%tl211879211934%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e211877211929%_)))
                                                     (_%hd211878211932%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e211877211929%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl211879211934%_))
                                                     (_%__kont212295212296%_
                                                      _%id211876211926%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g211846211884%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g211846211884%_))))))))
                         (_%loop211871211910%_ _%target211868211905%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx212291212292%_))
                    (let ((_%e211849211970%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx212291212292%_))))
                      (let ((_%tl211851211975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211849211970%_)))
                            (_%hd211850211973%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211849211970%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl211851211975%_))
                            (let ((_%e211852211978%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl211851211975%_))))
                              (let ((_%tl211854211983%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211852211978%_)))
                                    (_%hd211853211981%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211852211978%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd211853211981%_))
                                    (let ((_%e211855211986%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd211853211981%_))))
                                      (let ((_%tl211857211991%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211855211986%_)))
                                            (_%hd211856211989%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211855211986%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211857211991%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211854211983%_))
                                                (let ((_%e211858211994%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211854211983%_))))
                                                  (let ((_%tl211860211999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211858211994%_)))
                                                        (_%hd211859211997%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211858211994%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211860211999%_))
                                                        (_%__kont212293212294%_
                                                         _%hd211856211989%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd211853211981%_))
                                                            (let ((_%__splice212297212298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd211853211981%_
                              '0))))
                      (let ((_%tl211870211907%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212297212298%_ '1)))
                            (_%target211868211905%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212297212298%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211870211907%_))
                            (_%__match212346212347%_
                             _%e211849211970%_
                             _%hd211850211973%_
                             _%tl211851211975%_
                             _%e211852211978%_
                             _%hd211853211981%_
                             _%tl211854211983%_
                             _%__splice212297212298%_
                             _%target211868211905%_
                             _%tl211870211907%_)
                            (let ()
                              (declare (not safe))
                              (_%g211846211884%_)))))
                    (let () (declare (not safe)) (_%g211846211884%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd211853211981%_))
                                                    (let ((_%__splice212297212298%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd211853211981%_
                                                              '0))))
                                                      (let ((_%tl211870211907%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice212297212298%_ '1)))
                    (_%target211868211905%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice212297212298%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211870211907%_))
                    (_%__match212346212347%_
                     _%e211849211970%_
                     _%hd211850211973%_
                     _%tl211851211975%_
                     _%e211852211978%_
                     _%hd211853211981%_
                     _%tl211854211983%_
                     _%__splice212297212298%_
                     _%target211868211905%_
                     _%tl211870211907%_)
                    (let () (declare (not safe)) (_%g211846211884%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211846211884%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd211853211981%_))
                                                (let ((_%__splice212297212298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd211853211981%_
                                                          '0))))
                                                  (let ((_%tl211870211907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212297212298%_
                                                            '1)))
                                                        (_%target211868211905%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212297212298%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211870211907%_))
                                                        (_%__match212346212347%_
                                                         _%e211849211970%_
                                                         _%hd211850211973%_
                                                         _%tl211851211975%_
                                                         _%e211852211978%_
                                                         _%hd211853211981%_
                                                         _%tl211854211983%_
                                                         _%__splice212297212298%_
                                                         _%target211868211905%_
                                                         _%tl211870211907%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211846211884%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211846211884%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd211853211981%_))
                                        (let ((_%__splice212297212298%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd211853211981%_
                                                  '0))))
                                          (let ((_%tl211870211907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212297212298%_
                                                    '1)))
                                                (_%target211868211905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212297212298%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211870211907%_))
                                                (_%__match212346212347%_
                                                 _%e211849211970%_
                                                 _%hd211850211973%_
                                                 _%tl211851211975%_
                                                 _%e211852211978%_
                                                 _%hd211853211981%_
                                                 _%tl211854211983%_
                                                 _%__splice212297212298%_
                                                 _%target211868211905%_
                                                 _%tl211870211907%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211846211884%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g211846211884%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g211846211884%_)))))
                    (let () (declare (not safe)) (_%g211846211884%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self211393%_ _%stx211394%_)
        (let* ((_%__stx212349212350%_ _%stx211394%_)
               (_%g211398211500%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212349212350%_)))))
          (let ((_%__kont212351212352%_
                 (lambda (_%L211790%_
                          _%L211791%_
                          _%L211792%_
                          _%L211793%_
                          _%L211794%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211793%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L211792%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L211791%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L211790%_))
                                                 '())))))))
                (_%__kont212353212354%_
                 (lambda (_%L211616%_ _%L211617%_ _%L211618%_ _%L211619%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211618%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L211617%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L211616%_))
                                           (cons '#f '())))))))
                (_%__kont212355212356%_ (lambda () '(begin))))
            (let ((_%__match212484212485%_
                   (lambda (_%e211405211662%_
                            _%hd211406211665%_
                            _%tl211407211667%_
                            _%e211408211670%_
                            _%hd211409211673%_
                            _%tl211410211675%_
                            _%e211411211678%_
                            _%hd211412211681%_
                            _%tl211413211683%_
                            _%e211414211686%_
                            _%hd211415211689%_
                            _%tl211416211691%_
                            _%e211417211694%_
                            _%hd211418211697%_
                            _%tl211419211699%_
                            _%e211420211702%_
                            _%hd211421211705%_
                            _%tl211422211707%_
                            _%e211423211710%_
                            _%hd211424211713%_
                            _%tl211425211715%_
                            _%e211426211718%_
                            _%hd211427211721%_
                            _%tl211428211723%_
                            _%e211429211726%_
                            _%hd211430211729%_
                            _%tl211431211731%_
                            _%e211432211734%_
                            _%hd211433211737%_
                            _%tl211434211739%_
                            _%e211435211742%_
                            _%hd211436211745%_
                            _%tl211437211747%_
                            _%e211438211750%_
                            _%hd211439211753%_
                            _%tl211440211755%_
                            _%e211441211758%_
                            _%hd211442211761%_
                            _%tl211443211763%_
                            _%e211444211766%_
                            _%hd211445211769%_
                            _%tl211446211771%_
                            _%e211447211774%_
                            _%hd211448211777%_
                            _%tl211449211779%_
                            _%e211450211782%_
                            _%hd211451211785%_
                            _%tl211452211787%_)
                     (let ((_%L211790%_ _%hd211451211785%_)
                           (_%L211791%_ _%hd211442211761%_)
                           (_%L211792%_ _%hd211433211737%_)
                           (_%L211793%_ _%hd211424211713%_)
                           (_%L211794%_ _%hd211415211689%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L211794%_
                              'bind-method!))
                           (_%__kont212351212352%_
                            _%L211790%_
                            _%L211791%_
                            _%L211792%_
                            _%L211793%_
                            _%L211794%_)
                           (_%__kont212355212356%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx212349212350%_))
                  (let ((_%e211405211662%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx212349212350%_))))
                    (let ((_%tl211407211667%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211405211662%_)))
                          (_%hd211406211665%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211405211662%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211407211667%_))
                          (let ((_%e211408211670%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl211407211667%_))))
                            (let ((_%tl211410211675%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211408211670%_)))
                                  (_%hd211409211673%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211408211670%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd211409211673%_))
                                  (let ((_%e211411211678%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd211409211673%_))))
                                    (let ((_%tl211413211683%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211411211678%_)))
                                          (_%hd211412211681%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211411211678%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd211412211681%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd211412211681%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211413211683%_))
                                                  (let ((_%e211414211686%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211413211683%_))))
                                                    (let ((_%tl211416211691%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211414211686%_)))
                                                          (_%hd211415211689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211414211686%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211416211691%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl211410211675%_))
                      (let ((_%e211417211694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl211410211675%_))))
                        (let ((_%tl211419211699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211417211694%_)))
                              (_%hd211418211697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211417211694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd211418211697%_))
                              (let ((_%e211420211702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd211418211697%_))))
                                (let ((_%tl211422211707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211420211702%_)))
                                      (_%hd211421211705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211420211702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd211421211705%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd211421211705%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211422211707%_))
                                              (let ((_%e211423211710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl211422211707%_))))
                                                (let ((_%tl211425211715%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211423211710%_)))
                                                      (_%hd211424211713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211423211710%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211425211715%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl211419211699%_))
                                                          (let ((_%e211426211718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl211419211699%_))))
                    (let ((_%tl211428211723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211426211718%_)))
                          (_%hd211427211721%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211426211718%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd211427211721%_))
                          (let ((_%e211429211726%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd211427211721%_))))
                            (let ((_%tl211431211731%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211429211726%_)))
                                  (_%hd211430211729%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211429211726%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd211430211729%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd211430211729%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211431211731%_))
                                          (let ((_%e211432211734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl211431211731%_))))
                                            (let ((_%tl211434211739%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211432211734%_)))
                                                  (_%hd211433211737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211432211734%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl211434211739%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211428211723%_))
                                                      (let ((_%e211435211742%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl211428211723%_))))
                (let ((_%tl211437211747%_
                       (let () (declare (not safe)) (##cdr _%e211435211742%_)))
                      (_%hd211436211745%_
                       (let ()
                         (declare (not safe))
                         (##car _%e211435211742%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd211436211745%_))
                      (let ((_%e211438211750%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd211436211745%_))))
                        (let ((_%tl211440211755%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211438211750%_)))
                              (_%hd211439211753%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211438211750%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd211439211753%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd211439211753%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211440211755%_))
                                      (let ((_%e211441211758%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211440211755%_))))
                                        (let ((_%tl211443211763%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211441211758%_)))
                                              (_%hd211442211761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211441211758%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211443211763%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211437211747%_))
                                                  (let ((_%e211444211766%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211437211747%_))))
                                                    (let ((_%tl211446211771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211444211766%_)))
                                                          (_%hd211445211769%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211444211766%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd211445211769%_))
                                                          (let ((_%e211447211774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd211445211769%_))))
                    (let ((_%tl211449211779%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211447211774%_)))
                          (_%hd211448211777%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211447211774%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd211448211777%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd211448211777%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211449211779%_))
                                  (let ((_%e211450211782%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl211449211779%_))))
                                    (let ((_%tl211452211787%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211450211782%_)))
                                          (_%hd211451211785%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211450211782%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl211452211787%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211446211771%_))
                                              (_%__match212484212485%_
                                               _%e211405211662%_
                                               _%hd211406211665%_
                                               _%tl211407211667%_
                                               _%e211408211670%_
                                               _%hd211409211673%_
                                               _%tl211410211675%_
                                               _%e211411211678%_
                                               _%hd211412211681%_
                                               _%tl211413211683%_
                                               _%e211414211686%_
                                               _%hd211415211689%_
                                               _%tl211416211691%_
                                               _%e211417211694%_
                                               _%hd211418211697%_
                                               _%tl211419211699%_
                                               _%e211420211702%_
                                               _%hd211421211705%_
                                               _%tl211422211707%_
                                               _%e211423211710%_
                                               _%hd211424211713%_
                                               _%tl211425211715%_
                                               _%e211426211718%_
                                               _%hd211427211721%_
                                               _%tl211428211723%_
                                               _%e211429211726%_
                                               _%hd211430211729%_
                                               _%tl211431211731%_
                                               _%e211432211734%_
                                               _%hd211433211737%_
                                               _%tl211434211739%_
                                               _%e211435211742%_
                                               _%hd211436211745%_
                                               _%tl211437211747%_
                                               _%e211438211750%_
                                               _%hd211439211753%_
                                               _%tl211440211755%_
                                               _%e211441211758%_
                                               _%hd211442211761%_
                                               _%tl211443211763%_
                                               _%e211444211766%_
                                               _%hd211445211769%_
                                               _%tl211446211771%_
                                               _%e211447211774%_
                                               _%hd211448211777%_
                                               _%tl211449211779%_
                                               _%e211450211782%_
                                               _%hd211451211785%_
                                               _%tl211452211787%_)
                                              (_%__kont212355212356%_))
                                          (_%__kont212355212356%_))))
                                  (_%__kont212355212356%_))
                              (_%__kont212355212356%_))
                          (_%__kont212355212356%_))))
                  (_%__kont212355212356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211437211747%_))
                                                      (if (let ((__tmp212707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp212707 'bind-method!))
                  (let ((_%L211616%_ _%hd211442211761%_)
                        (_%L211617%_ _%hd211433211737%_)
                        (_%L211618%_ _%hd211424211713%_)
                        (_%L211619%_ _%hd211415211689%_))
                    (_%__kont212353212354%_
                     _%L211616%_
                     _%L211617%_
                     _%L211618%_
                     _%L211619%_))
                  (_%__kont212355212356%_))
              (_%__kont212355212356%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212355212356%_))))
                                      (_%__kont212355212356%_))
                                  (_%__kont212355212356%_))
                              (_%__kont212355212356%_))))
                      (_%__kont212355212356%_))))
              (_%__kont212355212356%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212355212356%_))))
                                          (_%__kont212355212356%_))
                                      (_%__kont212355212356%_))
                                  (_%__kont212355212356%_))))
                          (_%__kont212355212356%_))))
                  (_%__kont212355212356%_))
              (_%__kont212355212356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212355212356%_))
                                          (_%__kont212355212356%_))
                                      (_%__kont212355212356%_))))
                              (_%__kont212355212356%_))))
                      (_%__kont212355212356%_))
                  (_%__kont212355212356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212355212356%_))
                                              (_%__kont212355212356%_))
                                          (_%__kont212355212356%_))))
                                  (_%__kont212355212356%_))))
                          (_%__kont212355212356%_))))
                  (_%__kont212355212356%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self211217%_ _%stx211218%_)
        (let* ((_%__stx212593212594%_ _%stx211218%_)
               (_%g211221211261%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212593212594%_)))))
          (let ((_%__kont212595212596%_
                 (lambda (_%L211367%_ _%L211368%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211368%_))
                               (cons _%L211367%_ '())))))
                (_%__kont212597212598%_
                 (lambda (_%L211290%_ _%L211291%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx212593212594%_))
                (let ((_%e211225211311%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx212593212594%_))))
                  (let ((_%tl211227211316%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211225211311%_)))
                        (_%hd211226211314%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211225211311%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl211227211316%_))
                        (let ((_%e211228211319%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl211227211316%_))))
                          (let ((_%tl211230211324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211228211319%_)))
                                (_%hd211229211322%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211228211319%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd211229211322%_))
                                (let ((_%e211231211327%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd211229211322%_))))
                                  (let ((_%tl211233211332%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211231211327%_)))
                                        (_%hd211232211330%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211231211327%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd211232211330%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd211232211330%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211233211332%_))
                                                (let ((_%e211234211335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211233211332%_))))
                                                  (let ((_%tl211236211340%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211234211335%_)))
                                                        (_%hd211235211338%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211234211335%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211236211340%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl211230211324%_))
                                                            (let ((_%e211237211343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211230211324%_))))
                      (let ((_%tl211239211348%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211237211343%_)))
                            (_%hd211238211346%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211237211343%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd211238211346%_))
                            (let ((_%e211240211351%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd211238211346%_))))
                              (let ((_%tl211242211356%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211240211351%_)))
                                    (_%hd211241211354%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211240211351%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd211241211354%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd211241211354%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211242211356%_))
                                            (let ((_%e211243211359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211242211356%_))))
                                              (let ((_%tl211245211364%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211243211359%_)))
                                                    (_%hd211244211362%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211243211359%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211245211364%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211239211348%_))
                                                        (_%__kont212595212596%_
                                                         _%hd211244211362%_
                                                         _%hd211235211338%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211221211261%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211239211348%_))
                                                        (_%__kont212597212598%_
                                                         _%hd211238211346%_
                                                         _%hd211229211322%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211221211261%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211239211348%_))
                                                (_%__kont212597212598%_
                                                 _%hd211238211346%_
                                                 _%hd211229211322%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211221211261%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211239211348%_))
                                            (_%__kont212597212598%_
                                             _%hd211238211346%_
                                             _%hd211229211322%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211221211261%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211239211348%_))
                                        (_%__kont212597212598%_
                                         _%hd211238211346%_
                                         _%hd211229211322%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g211221211261%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl211239211348%_))
                                (_%__kont212597212598%_
                                 _%hd211238211346%_
                                 _%hd211229211322%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g211221211261%_))))))
                    (let () (declare (not safe)) (_%g211221211261%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl211230211324%_))
                    (let ((_%e211254211282%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211230211324%_))))
                      (let ((_%tl211256211287%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211254211282%_)))
                            (_%hd211255211285%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211254211282%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211256211287%_))
                            (_%__kont212597212598%_
                             _%hd211255211285%_
                             _%hd211229211322%_)
                            (let ()
                              (declare (not safe))
                              (_%g211221211261%_)))))
                    (let () (declare (not safe)) (_%g211221211261%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl211230211324%_))
                                                    (let ((_%e211254211282%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl211230211324%_))))
                                                      (let ((_%tl211256211287%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e211254211282%_)))
                    (_%hd211255211285%_
                     (let () (declare (not safe)) (##car _%e211254211282%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211256211287%_))
                    (_%__kont212597212598%_
                     _%hd211255211285%_
                     _%hd211229211322%_)
                    (let () (declare (not safe)) (_%g211221211261%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211221211261%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211230211324%_))
                                                (let ((_%e211254211282%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211230211324%_))))
                                                  (let ((_%tl211256211287%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211254211282%_)))
                                                        (_%hd211255211285%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211254211282%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211256211287%_))
                                                        (_%__kont212597212598%_
                                                         _%hd211255211285%_
                                                         _%hd211229211322%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211221211261%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211221211261%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211230211324%_))
                                            (let ((_%e211254211282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211230211324%_))))
                                              (let ((_%tl211256211287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211254211282%_)))
                                                    (_%hd211255211285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211254211282%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211256211287%_))
                                                    (_%__kont212597212598%_
                                                     _%hd211255211285%_
                                                     _%hd211229211322%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211221211261%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g211221211261%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl211230211324%_))
                                    (let ((_%e211254211282%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl211230211324%_))))
                                      (let ((_%tl211256211287%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211254211282%_)))
                                            (_%hd211255211285%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211254211282%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211256211287%_))
                                            (_%__kont212597212598%_
                                             _%hd211255211285%_
                                             _%hd211229211322%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211221211261%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g211221211261%_))))))
                        (let () (declare (not safe)) (_%g211221211261%_)))))
                (let () (declare (not safe)) (_%g211221211261%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self211204%_)
        (let ((_%self211207%_ _%self211204%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self211207%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self210977%_)
        (let* ((_%self210980%_ _%self210977%_)
               (_%self210989211005%_ _%self210980%_)
               (_%E210991211009%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self210989211005%_
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
               (_%K210992211024%_
                (lambda (_%methods211012%_
                         _%metaclass211013%_
                         _%system?211014%_
                         _%final?211015%_
                         _%struct?211016%_
                         _%constructor211017%_
                         _%fields211018%_
                         _%slots211019%_
                         _%precendence-list211020%_
                         _%super211021%_
                         _%id211022%_)
                  (cons '@class
                        (cons _%id211022%_
                              (cons _%super211021%_
                                    (cons _%precendence-list211020%_
                                          (cons _%slots211019%_
                                                (cons _%fields211018%_
                                                      (cons _%constructor211017%_
                                                            (cons _%struct?211016%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?211015%_
                                (cons _%system?211014%_
                                      (cons _%metaclass211013%_
                                            (cons (if _%methods211012%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods211012%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e210993211027%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '1 '#f '#f)))
               (_%id211030%_ _%e210993211027%_)
               (_%e210994211032%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '2 '#f '#f)))
               (_%super211035%_ _%e210994211032%_)
               (_%e210995211037%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '3 '#f '#f)))
               (_%precendence-list211040%_ _%e210995211037%_)
               (_%e210996211042%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '4 '#f '#f)))
               (_%slots211045%_ _%e210996211042%_)
               (_%e210997211047%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '5 '#f '#f)))
               (_%fields211050%_ _%e210997211047%_)
               (_%e210998211052%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '6 '#f '#f)))
               (_%constructor211055%_ _%e210998211052%_)
               (_%e210999211057%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '7 '#f '#f)))
               (_%struct?211060%_ _%e210999211057%_)
               (_%e211000211062%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '8 '#f '#f)))
               (_%final?211065%_ _%e211000211062%_)
               (_%e211001211067%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210989211005%_ '9 '#f '#f)))
               (_%system?211070%_ _%e211001211067%_)
               (_%e211002211072%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self210989211005%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass211075%_ _%e211002211072%_)
               (_%e211003211077%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self210989211005%_
                   '11
                   '#f
                   '#f)))
               (_%methods211080%_ _%e211003211077%_))
          (_%K210992211024%_
           _%methods211080%_
           _%metaclass211075%_
           _%system?211070%_
           _%final?211065%_
           _%struct?211060%_
           _%constructor211055%_
           _%fields211050%_
           _%slots211045%_
           _%precendence-list211040%_
           _%super211035%_
           _%id211030%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self210842%_)
        (let ((_%self210845%_ _%self210842%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210845%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self210707%_)
        (let ((_%self210710%_ _%self210707%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210710%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self210572%_)
        (let ((_%self210575%_ _%self210572%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210575%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210575%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210575%_
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
      (lambda (_%self210437%_)
        (let ((_%self210440%_ _%self210437%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210440%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210440%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210440%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self210302%_)
        (let ((_%self210305%_ _%self210302%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210305%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210305%_
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
      (lambda (_%self210115%_)
        (let* ((_%self210118%_ _%self210115%_)
               (_%self210127210136%_ _%self210118%_)
               (_%E210129210140%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self210127210136%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K210130210159%_
                (lambda (_%dispatch210143%_
                         _%arity210144%_
                         _%signature210145%_)
                  (if _%signature210145%_
                      (let ((_%signature210147%_ _%signature210145%_))
                        (cons '@lambda
                              (cons _%arity210144%_
                                    (cons _%dispatch210143%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature210147%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature210147%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature210147%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature210147%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature210147%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity210144%_
                                  (cons _%dispatch210143%_ '()))))))
               (_%e210131210162%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210127210136%_ '1 '#f '#f)))
               (_%e210132210165%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210127210136%_ '2 '#f '#f)))
               (_%signature210168%_ _%e210132210165%_)
               (_%e210133210170%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210127210136%_ '3 '#f '#f)))
               (_%arity210173%_ _%e210133210170%_)
               (_%e210134210175%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210127210136%_ '4 '#f '#f)))
               (_%dispatch210178%_ _%e210134210175%_))
          (_%K210130210159%_
           _%dispatch210178%_
           _%arity210173%_
           _%signature210168%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self209975%_)
        (let ((_%self209978%_ _%self209975%_))
          (letrec ((_%clause-e209989%_
                    (lambda (_%clause209991%_)
                      (cdr (let ((__method212681
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause209991%_
                                     'typedecl))))
                             (if __method212681
                                 (let ()
                                   (declare (not safe))
                                   (__method212681 _%clause209991%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause209991%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e209989%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self209978%_
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
      (lambda (_%self209840%_)
        (let ((_%self209843%_ _%self209840%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209843%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209843%_
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
      (lambda (_%self209705%_)
        (let ((_%self209708%_ _%self209705%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209708%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209708%_
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
      (lambda (_%self209570%_)
        (let ((_%self209573%_ _%self209570%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209573%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
