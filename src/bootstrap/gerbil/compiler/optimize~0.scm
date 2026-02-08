(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770513304)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp254879
                   (let ((__obj254873
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
                       (gxc#optimizer-info:::init! __obj254873))
                     __obj254873)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp254879)))))
    (define gxc#optimize!
      (lambda (_%ctx254481%_)
        (let ((__tmp254881
               (lambda ()
                 (let ((__tmp254883
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx254481%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx254481%_)
                          (let ((__tmp254885
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp254884
                                 (##structure-ref
                                  _%ctx254481%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp254885 __tmp254884 '#t))
                          (let ((_%code254485%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx254481%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx254481%_
                             _%code254485%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp254882
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp254883
                    gxc#current-compile-local-type
                    __tmp254882))))
              (__tmp254880 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254881
           gxc#current-compile-mutators
           __tmp254880))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx254467%_)
        (letrec ((_%load-it!254469%_
                  (lambda (_%id254479%_)
                    (if (let ((__tmp254886
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp254886 _%id254479%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id254479%_)
                          (let ((__tmp254887
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp254887 _%id254479%_ '#t)))))))
          (let* ((_%modid254471%_
                  (##structure-ref
                   _%ctx254467%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str254473%_ (symbol->string _%modid254471%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str254473%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str254473%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!254469%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!254469%_
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
      (lambda (_%ctx254404%_)
        (letrec* ((_%deps254406%_
                   (let* ((_%imports254457%_
                           (##structure-ref
                            _%ctx254404%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e254459%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx254404%_))))
                     (if _%$e254459%_
                         ((lambda (_%g254461254463%_)
                            (cons _%g254461254463%_ _%imports254457%_))
                          _%$e254459%_)
                         _%imports254457%_))))
          (let _%lp254408%_ ((_%rest254410%_ _%deps254406%_))
            (let* ((_%rest254411254419%_ _%rest254410%_)
                   (_%else254413254427%_ (lambda () '#!void))
                   (_%K254415254445%_
                    (lambda (_%rest254430%_ _%hd254431%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd254431%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp254889
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp254888
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd254431%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp254889 __tmp254888))
                                '#!void
                                (begin
                                  (let ((_%$e254434%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd254431%_))))
                                    (if _%$e254434%_
                                        ((lambda (_%pre254437%_)
                                           (_%lp254408%_
                                            (cons _%pre254437%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd254431%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e254434%_)
                                        (_%lp254408%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd254431%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd254431%_)))
                            (_%lp254408%_ _%rest254430%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd254431%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp254891
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp254890
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd254431%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp254891 __tmp254890))
                                    '#!void
                                    (begin
                                      (_%lp254408%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd254431%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd254431%_)))
                                (_%lp254408%_ _%rest254430%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd254431%_
                                     'gx#module-import::t))
                                  (_%lp254408%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd254431%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest254430%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd254431%_
                                         'gx#module-export::t))
                                      (_%lp254408%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd254431%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest254430%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd254431%_
                                             'gx#import-set::t))
                                          (_%lp254408%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd254431%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest254430%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd254431%_))))))))))
              (if (pair? _%rest254411254419%_)
                  (let ((_%hd254416254448%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest254411254419%_)))
                        (_%tl254417254450%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest254411254419%_))))
                    (let* ((_%hd254453%_ _%hd254416254448%_)
                           (_%rest254455%_ _%tl254417254450%_))
                      (_%K254415254445%_ _%rest254455%_ _%hd254453%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx254384%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx254384%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx254384%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht254386%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id254388%_
                    (##structure-ref
                     _%ctx254384%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod254390%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht254386%_ _%id254388%_)))
                   (_%$e254393%_ _%mod254390%_))
              (if _%$e254393%_
                  _%$e254393%_
                  (let* ((_%mod254396%_
                          (gxc#optimizer-import-ssxi _%ctx254384%_))
                         (_%val254401%_
                          (let ((_%$e254398%_ _%mod254396%_))
                            (if _%$e254398%_ _%$e254398%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht254386%_ _%id254388%_ _%val254401%_))
                    _%val254401%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx254382%_)
        (if (##structure-ref _%ctx254382%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx254382%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id254360%_)
        (letrec ((_%catch-e254362%_
                  (lambda (_%exn254380%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn254380%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn254380%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id254360%_))))
                    '#f))
                 (_%import-e254363%_
                  (lambda ()
                    (let* ((_%str-id254366%_
                            (let ((__tmp254892
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id254360%_))))
                              (declare (not safe))
                              (##string-append __tmp254892 '".ssxi")))
                           (_%artefact-path254373%_
                            (let ((_%odir254367254369%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir254367254369%_
                                  (let ((_%odir254371%_ _%odir254367254369%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id254366%_
                                        '".ss"))
                                     _%odir254371%_))
                                  '#f)))
                           (_%library-path254375%_
                            (let ((__tmp254893
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id254366%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp254893)))
                           (_%ssxi-path254377%_
                            (if (and _%artefact-path254373%_
                                     (file-exists? _%artefact-path254373%_))
                                _%artefact-path254373%_
                                _%library-path254375%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path254377%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path254377%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e254362%_ _%import-e254363%_)))))
    (define gxc#optimize-source
      (lambda (_%stx254345%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx254345%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx254345%_))
        (let* ((_%stx254347%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx254345%_)))
               (_%stx254349%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx254347%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx254349%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx254349%_))
          (let _%fixpoint254352%_ ((_%current254354%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx254349%_))
            (let ((_%refined254356%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current254354%_ _%refined254356%_)
                  '#!void
                  (_%fixpoint254352%_ _%refined254356%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx254349%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx254349%_))
          (let ((_%stx254358%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx254349%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx254358%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp254895 (list gxc#::generate-runtime-empty::t))
            (__tmp254894 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp254895
         '()
         __tmp254894
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args254342%_
        (apply make-instance gxc#::generate-ssxi::t _%$args254342%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp254896
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
        (__make-atomic-promise __tmp254896)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx254334%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self254337%_
                (let ((__obj254875
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj254875))
               (__tmp254897
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self254337%_ _%stx254334%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp254897
           gxc#current-compile-method
           _%self254337%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self254294%_ _%stx254295%_)
        (let* ((_%g254297254307%_
                (lambda (_%g254298254304%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254298254304%_))))
               (_%g254296254331%_
                (lambda (_%g254298254310%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254298254310%_))
                      (let ((_%e254300254312%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254298254310%_))))
                        (let ((_%hd254301254315%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254300254312%_)))
                              (_%tl254302254317%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254300254312%_))))
                          ((lambda (_%g254299254320%_)
                             (let ((__tmp254900
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self254294%_
                                         _%stx254295%_))))
                                   (__tmp254898
                                    (let ((__tmp254899
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp254899 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp254900
                                gx#current-expander-phi
                                __tmp254898)))
                           _%tl254302254317%_)))
                      (_%g254297254307%_ _%g254298254310%_)))))
          (_%g254296254331%_ _%stx254295%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self254233%_ _%stx254234%_)
        (let* ((_%g254236254250%_
                (lambda (_%g254237254247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g254237254247%_))))
               (_%g254235254291%_
                (lambda (_%g254237254253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g254237254253%_))
                      (let ((_%e254240254255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g254237254253%_))))
                        (let ((_%hd254241254258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254240254255%_)))
                              (_%tl254242254260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254240254255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl254242254260%_))
                              (let ((_%e254243254263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl254242254260%_))))
                                (let ((_%hd254244254266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e254243254263%_)))
                                      (_%tl254245254268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e254243254263%_))))
                                  ((lambda (_%g254238254271%_
                                            _%g254239254272%_)
                                     (let* ((_%ctx254285%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g254239254272%_)))
                                            (_%code254287%_
                                             (##structure-ref
                                              _%ctx254285%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp254901
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self254233%_
                                                  _%code254287%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp254901
                                        gx#current-expander-context
                                        _%ctx254285%_)))
                                   _%tl254245254268%_
                                   _%hd254244254266%_)))
                              (_%g254236254250%_ _%g254237254253%_))))
                      (_%g254236254250%_ _%g254237254253%_)))))
          (_%g254235254291%_ _%stx254234%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self254040%_ _%stx254041%_)
        (letrec ((_%generate-e254043%_
                  (lambda (_%id254218%_)
                    (let* ((_%sym254220%_
                            (if (let ((__tmp254902
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp254902))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id254218%_))
                                '#f))
                           (_%$e254222%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym254220%_))))
                      (if _%$e254222%_
                          ((lambda (_%klass254225%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym254220%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym254220%_
                                                     (cons (let ((__method254876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass254225%_ 'typedecl))))
                     (if __method254876
                         (let ()
                           (declare (not safe))
                           (__method254876 _%klass254225%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass254225%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym254220%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym254220%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e254222%_)
                          (let ((_%$e254227%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym254220%_))))
                            (if _%$e254227%_
                                ((lambda (_%type254230%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym254220%_
                                      '" "
                                      _%type254230%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type254230%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym254220%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym254220%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type254230%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym254220%_
                                                   (cons (let ((__method254877
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type254230%_ 'typedecl))))
                   (if __method254877
                       (let ()
                         (declare (not safe))
                         (__method254877 _%type254230%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type254230%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e254227%_)
                                '(begin))))))))
          (let* ((_%__stx254488254489%_ _%stx254041%_)
                 (_%g254046254084%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx254488254489%_)))))
            (let ((_%__kont254490254491%_
                   (lambda (_%g254048254200%_)
                     (_%generate-e254043%_ _%g254048254200%_)))
                  (_%__kont254492254493%_
                   (lambda (_%g254061254135%_)
                     (let ((_%types254161%_
                            (map _%generate-e254043%_
                                 (let ((__tmp254903
                                        (lambda (_%g254153254156%_
                                                 _%g254154254158%_)
                                          (cons _%g254153254156%_
                                                _%g254154254158%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp254903
                                    '()
                                    _%g254061254135%_)))))
                       (cons 'begin _%types254161%_)))))
              (let ((_%__match254543254544%_
                     (lambda (_%e254062254089%_
                              _%hd254063254092%_
                              _%tl254064254094%_
                              _%e254065254097%_
                              _%hd254066254100%_
                              _%tl254067254102%_
                              _%__splice254494254495%_
                              _%target254068254105%_
                              _%tl254070254107%_)
                       (letrec ((_%loop254071254110%_
                                 (lambda (_%hd254069254113%_
                                          _%id254075254115%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd254069254113%_))
                                       (let ((_%e254072254117%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd254069254113%_))))
                                         (let ((_%lp-tl254074254122%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e254072254117%_)))
                                               (_%lp-hd254073254120%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e254072254117%_))))
                                           (_%loop254071254110%_
                                            _%lp-tl254074254122%_
                                            (cons _%lp-hd254073254120%_
                                                  _%id254075254115%_))))
                                       (let ((_%id254076254125%_
                                              (reverse _%id254075254115%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl254067254102%_))
                                             (let ((_%e254077254127%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl254067254102%_))))
                                               (let ((_%tl254079254132%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e254077254127%_)))
                                                     (_%hd254078254130%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e254077254127%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl254079254132%_))
                                                     (_%__kont254492254493%_
                                                      _%id254076254125%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g254046254084%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g254046254084%_))))))))
                         (_%loop254071254110%_ _%target254068254105%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx254488254489%_))
                    (let ((_%e254049254168%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx254488254489%_))))
                      (let ((_%tl254051254173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254049254168%_)))
                            (_%hd254050254171%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254049254168%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl254051254173%_))
                            (let ((_%e254052254176%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl254051254173%_))))
                              (let ((_%tl254054254181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e254052254176%_)))
                                    (_%hd254053254179%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e254052254176%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd254053254179%_))
                                    (let ((_%e254055254184%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd254053254179%_))))
                                      (let ((_%tl254057254189%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e254055254184%_)))
                                            (_%hd254056254187%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e254055254184%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl254057254189%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl254054254181%_))
                                                (let ((_%e254058254192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl254054254181%_))))
                                                  (let ((_%tl254060254197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e254058254192%_)))
                                                        (_%hd254059254195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e254058254192%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254060254197%_))
                                                        (_%__kont254490254491%_
                                                         _%hd254056254187%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd254053254179%_))
                                                            (let ((_%__splice254494254495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd254053254179%_
                              '0))))
                      (let ((_%tl254070254107%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice254494254495%_ '1)))
                            (_%target254068254105%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice254494254495%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl254070254107%_))
                            (_%__match254543254544%_
                             _%e254049254168%_
                             _%hd254050254171%_
                             _%tl254051254173%_
                             _%e254052254176%_
                             _%hd254053254179%_
                             _%tl254054254181%_
                             _%__splice254494254495%_
                             _%target254068254105%_
                             _%tl254070254107%_)
                            (let ()
                              (declare (not safe))
                              (_%g254046254084%_)))))
                    (let () (declare (not safe)) (_%g254046254084%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd254053254179%_))
                                                    (let ((_%__splice254494254495%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd254053254179%_
                                                              '0))))
                                                      (let ((_%tl254070254107%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice254494254495%_ '1)))
                    (_%target254068254105%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice254494254495%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl254070254107%_))
                    (_%__match254543254544%_
                     _%e254049254168%_
                     _%hd254050254171%_
                     _%tl254051254173%_
                     _%e254052254176%_
                     _%hd254053254179%_
                     _%tl254054254181%_
                     _%__splice254494254495%_
                     _%target254068254105%_
                     _%tl254070254107%_)
                    (let () (declare (not safe)) (_%g254046254084%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g254046254084%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd254053254179%_))
                                                (let ((_%__splice254494254495%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd254053254179%_
                                                          '0))))
                                                  (let ((_%tl254070254107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice254494254495%_
                                                            '1)))
                                                        (_%target254068254105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice254494254495%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254070254107%_))
                                                        (_%__match254543254544%_
                                                         _%e254049254168%_
                                                         _%hd254050254171%_
                                                         _%tl254051254173%_
                                                         _%e254052254176%_
                                                         _%hd254053254179%_
                                                         _%tl254054254181%_
                                                         _%__splice254494254495%_
                                                         _%target254068254105%_
                                                         _%tl254070254107%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g254046254084%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g254046254084%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd254053254179%_))
                                        (let ((_%__splice254494254495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd254053254179%_
                                                  '0))))
                                          (let ((_%tl254070254107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice254494254495%_
                                                    '1)))
                                                (_%target254068254105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice254494254495%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl254070254107%_))
                                                (_%__match254543254544%_
                                                 _%e254049254168%_
                                                 _%hd254050254171%_
                                                 _%tl254051254173%_
                                                 _%e254052254176%_
                                                 _%hd254053254179%_
                                                 _%tl254054254181%_
                                                 _%__splice254494254495%_
                                                 _%target254068254105%_
                                                 _%tl254070254107%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g254046254084%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g254046254084%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g254046254084%_)))))
                    (let () (declare (not safe)) (_%g254046254084%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self253593%_ _%stx253594%_)
        (let* ((_%__stx254546254547%_ _%stx253594%_)
               (_%g253598253700%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254546254547%_)))))
          (let ((_%__kont254548254549%_
                 (lambda (_%g253600253990%_
                          _%g253601253991%_
                          _%g253602253992%_
                          _%g253603253993%_
                          _%g253604253994%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253603253993%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g253602253992%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g253601253991%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g253600253990%_))
                                                 '())))))))
                (_%__kont254550254551%_
                 (lambda (_%g253653253816%_
                          _%g253654253817%_
                          _%g253655253818%_
                          _%g253656253819%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253655253818%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g253654253817%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g253653253816%_))
                                           (cons '#f '())))))))
                (_%__kont254552254553%_ (lambda () '(begin))))
            (let ((_%__match254681254682%_
                   (lambda (_%e253605253862%_
                            _%hd253606253865%_
                            _%tl253607253867%_
                            _%e253608253870%_
                            _%hd253609253873%_
                            _%tl253610253875%_
                            _%e253611253878%_
                            _%hd253612253881%_
                            _%tl253613253883%_
                            _%e253614253886%_
                            _%hd253615253889%_
                            _%tl253616253891%_
                            _%e253617253894%_
                            _%hd253618253897%_
                            _%tl253619253899%_
                            _%e253620253902%_
                            _%hd253621253905%_
                            _%tl253622253907%_
                            _%e253623253910%_
                            _%hd253624253913%_
                            _%tl253625253915%_
                            _%e253626253918%_
                            _%hd253627253921%_
                            _%tl253628253923%_
                            _%e253629253926%_
                            _%hd253630253929%_
                            _%tl253631253931%_
                            _%e253632253934%_
                            _%hd253633253937%_
                            _%tl253634253939%_
                            _%e253635253942%_
                            _%hd253636253945%_
                            _%tl253637253947%_
                            _%e253638253950%_
                            _%hd253639253953%_
                            _%tl253640253955%_
                            _%e253641253958%_
                            _%hd253642253961%_
                            _%tl253643253963%_
                            _%e253644253966%_
                            _%hd253645253969%_
                            _%tl253646253971%_
                            _%e253647253974%_
                            _%hd253648253977%_
                            _%tl253649253979%_
                            _%e253650253982%_
                            _%hd253651253985%_
                            _%tl253652253987%_)
                     (let ((_%g253600253990%_ _%hd253651253985%_)
                           (_%g253601253991%_ _%hd253642253961%_)
                           (_%g253602253992%_ _%hd253633253937%_)
                           (_%g253603253993%_ _%hd253624253913%_)
                           (_%g253604253994%_ _%hd253615253889%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g253604253994%_
                              'bind-method!))
                           (_%__kont254548254549%_
                            _%g253600253990%_
                            _%g253601253991%_
                            _%g253602253992%_
                            _%g253603253993%_
                            _%g253604253994%_)
                           (_%__kont254552254553%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx254546254547%_))
                  (let ((_%e253605253862%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx254546254547%_))))
                    (let ((_%tl253607253867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253605253862%_)))
                          (_%hd253606253865%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253605253862%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl253607253867%_))
                          (let ((_%e253608253870%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl253607253867%_))))
                            (let ((_%tl253610253875%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253608253870%_)))
                                  (_%hd253609253873%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253608253870%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd253609253873%_))
                                  (let ((_%e253611253878%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd253609253873%_))))
                                    (let ((_%tl253613253883%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253611253878%_)))
                                          (_%hd253612253881%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253611253878%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd253612253881%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd253612253881%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253613253883%_))
                                                  (let ((_%e253614253886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253613253883%_))))
                                                    (let ((_%tl253616253891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253614253886%_)))
                                                          (_%hd253615253889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253614253886%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl253616253891%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl253610253875%_))
                      (let ((_%e253617253894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl253610253875%_))))
                        (let ((_%tl253619253899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253617253894%_)))
                              (_%hd253618253897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253617253894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd253618253897%_))
                              (let ((_%e253620253902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd253618253897%_))))
                                (let ((_%tl253622253907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e253620253902%_)))
                                      (_%hd253621253905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e253620253902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd253621253905%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd253621253905%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl253622253907%_))
                                              (let ((_%e253623253910%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl253622253907%_))))
                                                (let ((_%tl253625253915%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e253623253910%_)))
                                                      (_%hd253624253913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e253623253910%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253625253915%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl253619253899%_))
                                                          (let ((_%e253626253918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl253619253899%_))))
                    (let ((_%tl253628253923%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253626253918%_)))
                          (_%hd253627253921%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253626253918%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd253627253921%_))
                          (let ((_%e253629253926%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd253627253921%_))))
                            (let ((_%tl253631253931%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e253629253926%_)))
                                  (_%hd253630253929%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e253629253926%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd253630253929%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd253630253929%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl253631253931%_))
                                          (let ((_%e253632253934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl253631253931%_))))
                                            (let ((_%tl253634253939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e253632253934%_)))
                                                  (_%hd253633253937%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e253632253934%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl253634253939%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl253628253923%_))
                                                      (let ((_%e253635253942%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl253628253923%_))))
                (let ((_%tl253637253947%_
                       (let () (declare (not safe)) (##cdr _%e253635253942%_)))
                      (_%hd253636253945%_
                       (let ()
                         (declare (not safe))
                         (##car _%e253635253942%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd253636253945%_))
                      (let ((_%e253638253950%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd253636253945%_))))
                        (let ((_%tl253640253955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e253638253950%_)))
                              (_%hd253639253953%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e253638253950%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd253639253953%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd253639253953%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl253640253955%_))
                                      (let ((_%e253641253958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl253640253955%_))))
                                        (let ((_%tl253643253963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e253641253958%_)))
                                              (_%hd253642253961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e253641253958%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253643253963%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl253637253947%_))
                                                  (let ((_%e253644253966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl253637253947%_))))
                                                    (let ((_%tl253646253971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e253644253966%_)))
                                                          (_%hd253645253969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e253644253966%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd253645253969%_))
                                                          (let ((_%e253647253974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd253645253969%_))))
                    (let ((_%tl253649253979%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e253647253974%_)))
                          (_%hd253648253977%_
                           (let ()
                             (declare (not safe))
                             (##car _%e253647253974%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd253648253977%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd253648253977%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl253649253979%_))
                                  (let ((_%e253650253982%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl253649253979%_))))
                                    (let ((_%tl253652253987%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e253650253982%_)))
                                          (_%hd253651253985%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e253650253982%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl253652253987%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl253646253971%_))
                                              (_%__match254681254682%_
                                               _%e253605253862%_
                                               _%hd253606253865%_
                                               _%tl253607253867%_
                                               _%e253608253870%_
                                               _%hd253609253873%_
                                               _%tl253610253875%_
                                               _%e253611253878%_
                                               _%hd253612253881%_
                                               _%tl253613253883%_
                                               _%e253614253886%_
                                               _%hd253615253889%_
                                               _%tl253616253891%_
                                               _%e253617253894%_
                                               _%hd253618253897%_
                                               _%tl253619253899%_
                                               _%e253620253902%_
                                               _%hd253621253905%_
                                               _%tl253622253907%_
                                               _%e253623253910%_
                                               _%hd253624253913%_
                                               _%tl253625253915%_
                                               _%e253626253918%_
                                               _%hd253627253921%_
                                               _%tl253628253923%_
                                               _%e253629253926%_
                                               _%hd253630253929%_
                                               _%tl253631253931%_
                                               _%e253632253934%_
                                               _%hd253633253937%_
                                               _%tl253634253939%_
                                               _%e253635253942%_
                                               _%hd253636253945%_
                                               _%tl253637253947%_
                                               _%e253638253950%_
                                               _%hd253639253953%_
                                               _%tl253640253955%_
                                               _%e253641253958%_
                                               _%hd253642253961%_
                                               _%tl253643253963%_
                                               _%e253644253966%_
                                               _%hd253645253969%_
                                               _%tl253646253971%_
                                               _%e253647253974%_
                                               _%hd253648253977%_
                                               _%tl253649253979%_
                                               _%e253650253982%_
                                               _%hd253651253985%_
                                               _%tl253652253987%_)
                                              (_%__kont254552254553%_))
                                          (_%__kont254552254553%_))))
                                  (_%__kont254552254553%_))
                              (_%__kont254552254553%_))
                          (_%__kont254552254553%_))))
                  (_%__kont254552254553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl253637253947%_))
                                                      (if (let ((__tmp254904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp254904 'bind-method!))
                  (let ((_%g253653253816%_ _%hd253642253961%_)
                        (_%g253654253817%_ _%hd253633253937%_)
                        (_%g253655253818%_ _%hd253624253913%_)
                        (_%g253656253819%_ _%hd253615253889%_))
                    (_%__kont254550254551%_
                     _%g253653253816%_
                     _%g253654253817%_
                     _%g253655253818%_
                     _%g253656253819%_))
                  (_%__kont254552254553%_))
              (_%__kont254552254553%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254552254553%_))))
                                      (_%__kont254552254553%_))
                                  (_%__kont254552254553%_))
                              (_%__kont254552254553%_))))
                      (_%__kont254552254553%_))))
              (_%__kont254552254553%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254552254553%_))))
                                          (_%__kont254552254553%_))
                                      (_%__kont254552254553%_))
                                  (_%__kont254552254553%_))))
                          (_%__kont254552254553%_))))
                  (_%__kont254552254553%_))
              (_%__kont254552254553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont254552254553%_))
                                          (_%__kont254552254553%_))
                                      (_%__kont254552254553%_))))
                              (_%__kont254552254553%_))))
                      (_%__kont254552254553%_))
                  (_%__kont254552254553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont254552254553%_))
                                              (_%__kont254552254553%_))
                                          (_%__kont254552254553%_))))
                                  (_%__kont254552254553%_))))
                          (_%__kont254552254553%_))))
                  (_%__kont254552254553%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self253417%_ _%stx253418%_)
        (let* ((_%__stx254790254791%_ _%stx253418%_)
               (_%g253421253461%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx254790254791%_)))))
          (let ((_%__kont254792254793%_
                 (lambda (_%g253423253567%_ _%g253424253568%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g253424253568%_))
                               (cons _%g253423253567%_ '())))))
                (_%__kont254794254795%_
                 (lambda (_%g253446253490%_ _%g253447253491%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx254790254791%_))
                (let ((_%e253425253511%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx254790254791%_))))
                  (let ((_%tl253427253516%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e253425253511%_)))
                        (_%hd253426253514%_
                         (let ()
                           (declare (not safe))
                           (##car _%e253425253511%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl253427253516%_))
                        (let ((_%e253428253519%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl253427253516%_))))
                          (let ((_%tl253430253524%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e253428253519%_)))
                                (_%hd253429253522%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e253428253519%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd253429253522%_))
                                (let ((_%e253431253527%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd253429253522%_))))
                                  (let ((_%tl253433253532%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e253431253527%_)))
                                        (_%hd253432253530%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e253431253527%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd253432253530%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd253432253530%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl253433253532%_))
                                                (let ((_%e253434253535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl253433253532%_))))
                                                  (let ((_%tl253436253540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253434253535%_)))
                                                        (_%hd253435253538%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253434253535%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253436253540%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl253430253524%_))
                                                            (let ((_%e253437253543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl253430253524%_))))
                      (let ((_%tl253439253548%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253437253543%_)))
                            (_%hd253438253546%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253437253543%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd253438253546%_))
                            (let ((_%e253440253551%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd253438253546%_))))
                              (let ((_%tl253442253556%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e253440253551%_)))
                                    (_%hd253441253554%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e253440253551%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd253441253554%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd253441253554%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl253442253556%_))
                                            (let ((_%e253443253559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl253442253556%_))))
                                              (let ((_%tl253445253564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e253443253559%_)))
                                                    (_%hd253444253562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e253443253559%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl253445253564%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253439253548%_))
                                                        (_%__kont254792254793%_
                                                         _%hd253444253562%_
                                                         _%hd253435253538%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253421253461%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253439253548%_))
                                                        (_%__kont254794254795%_
                                                         _%hd253438253546%_
                                                         _%hd253429253522%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253421253461%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl253439253548%_))
                                                (_%__kont254794254795%_
                                                 _%hd253438253546%_
                                                 _%hd253429253522%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253421253461%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl253439253548%_))
                                            (_%__kont254794254795%_
                                             _%hd253438253546%_
                                             _%hd253429253522%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g253421253461%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl253439253548%_))
                                        (_%__kont254794254795%_
                                         _%hd253438253546%_
                                         _%hd253429253522%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g253421253461%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl253439253548%_))
                                (_%__kont254794254795%_
                                 _%hd253438253546%_
                                 _%hd253429253522%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g253421253461%_))))))
                    (let () (declare (not safe)) (_%g253421253461%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl253430253524%_))
                    (let ((_%e253454253482%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl253430253524%_))))
                      (let ((_%tl253456253487%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e253454253482%_)))
                            (_%hd253455253485%_
                             (let ()
                               (declare (not safe))
                               (##car _%e253454253482%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl253456253487%_))
                            (_%__kont254794254795%_
                             _%hd253455253485%_
                             _%hd253429253522%_)
                            (let ()
                              (declare (not safe))
                              (_%g253421253461%_)))))
                    (let () (declare (not safe)) (_%g253421253461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl253430253524%_))
                                                    (let ((_%e253454253482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl253430253524%_))))
                                                      (let ((_%tl253456253487%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e253454253482%_)))
                    (_%hd253455253485%_
                     (let () (declare (not safe)) (##car _%e253454253482%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl253456253487%_))
                    (_%__kont254794254795%_
                     _%hd253455253485%_
                     _%hd253429253522%_)
                    (let () (declare (not safe)) (_%g253421253461%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g253421253461%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl253430253524%_))
                                                (let ((_%e253454253482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl253430253524%_))))
                                                  (let ((_%tl253456253487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e253454253482%_)))
                                                        (_%hd253455253485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e253454253482%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl253456253487%_))
                                                        (_%__kont254794254795%_
                                                         _%hd253455253485%_
                                                         _%hd253429253522%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g253421253461%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g253421253461%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl253430253524%_))
                                            (let ((_%e253454253482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl253430253524%_))))
                                              (let ((_%tl253456253487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e253454253482%_)))
                                                    (_%hd253455253485%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e253454253482%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl253456253487%_))
                                                    (_%__kont254794254795%_
                                                     _%hd253455253485%_
                                                     _%hd253429253522%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g253421253461%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g253421253461%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl253430253524%_))
                                    (let ((_%e253454253482%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl253430253524%_))))
                                      (let ((_%tl253456253487%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e253454253482%_)))
                                            (_%hd253455253485%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e253454253482%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl253456253487%_))
                                            (_%__kont254794254795%_
                                             _%hd253455253485%_
                                             _%hd253429253522%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g253421253461%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g253421253461%_))))))
                        (let () (declare (not safe)) (_%g253421253461%_)))))
                (let () (declare (not safe)) (_%g253421253461%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self253404%_)
        (let ((_%self253407%_ _%self253404%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253407%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self253178%_)
        (let* ((_%self253181%_ _%self253178%_)
               (_%self253190253206%_ _%self253181%_)
               (_%E253192253209%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253190253206%_
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
               (_%K253193253224%_
                (lambda (_%methods253212%_
                         _%metaclass253213%_
                         _%system?253214%_
                         _%final?253215%_
                         _%struct?253216%_
                         _%constructor253217%_
                         _%fields253218%_
                         _%slots253219%_
                         _%precendence-list253220%_
                         _%super253221%_
                         _%id253222%_)
                  (cons '@class
                        (cons _%id253222%_
                              (cons _%super253221%_
                                    (cons _%precendence-list253220%_
                                          (cons _%slots253219%_
                                                (cons _%fields253218%_
                                                      (cons _%constructor253217%_
                                                            (cons _%struct?253216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?253215%_
                                (cons _%system?253214%_
                                      (cons _%metaclass253213%_
                                            (cons (if _%methods253212%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods253212%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e253194253227%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '1 '#f '#f)))
               (_%id253230%_ _%e253194253227%_)
               (_%e253195253232%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '2 '#f '#f)))
               (_%super253235%_ _%e253195253232%_)
               (_%e253196253237%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '3 '#f '#f)))
               (_%precendence-list253240%_ _%e253196253237%_)
               (_%e253197253242%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '4 '#f '#f)))
               (_%slots253245%_ _%e253197253242%_)
               (_%e253198253247%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '5 '#f '#f)))
               (_%fields253250%_ _%e253198253247%_)
               (_%e253199253252%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '6 '#f '#f)))
               (_%constructor253255%_ _%e253199253252%_)
               (_%e253200253257%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '7 '#f '#f)))
               (_%struct?253260%_ _%e253200253257%_)
               (_%e253201253262%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '8 '#f '#f)))
               (_%final?253265%_ _%e253201253262%_)
               (_%e253202253267%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253190253206%_ '9 '#f '#f)))
               (_%system?253270%_ _%e253202253267%_)
               (_%e253203253272%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self253190253206%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass253275%_ _%e253203253272%_)
               (_%e253204253277%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self253190253206%_
                   '11
                   '#f
                   '#f)))
               (_%methods253280%_ _%e253204253277%_))
          (_%K253193253224%_
           _%methods253280%_
           _%metaclass253275%_
           _%system?253270%_
           _%final?253265%_
           _%struct?253260%_
           _%constructor253255%_
           _%fields253250%_
           _%slots253245%_
           _%precendence-list253240%_
           _%super253235%_
           _%id253230%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self253043%_)
        (let ((_%self253046%_ _%self253043%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253046%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self252908%_)
        (let ((_%self252911%_ _%self252908%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252911%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self252773%_)
        (let ((_%self252776%_ _%self252773%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252776%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252776%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252776%_
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
      (lambda (_%self252638%_)
        (let ((_%self252641%_ _%self252638%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252641%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252641%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self252641%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self252503%_)
        (let ((_%self252506%_ _%self252503%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252506%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252506%_
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
      (lambda (_%self252317%_)
        (let* ((_%self252320%_ _%self252317%_)
               (_%self252329252338%_ _%self252320%_)
               (_%E252331252341%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self252329252338%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K252332252360%_
                (lambda (_%dispatch252344%_
                         _%arity252345%_
                         _%signature252346%_)
                  (if _%signature252346%_
                      (let ((_%signature252348%_ _%signature252346%_))
                        (cons '@lambda
                              (cons _%arity252345%_
                                    (cons _%dispatch252344%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature252348%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature252348%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature252348%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature252348%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature252348%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity252345%_
                                  (cons _%dispatch252344%_ '()))))))
               (_%e252333252363%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252329252338%_ '1 '#f '#f)))
               (_%e252334252366%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252329252338%_ '2 '#f '#f)))
               (_%signature252369%_ _%e252334252366%_)
               (_%e252335252371%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252329252338%_ '3 '#f '#f)))
               (_%arity252374%_ _%e252335252371%_)
               (_%e252336252376%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self252329252338%_ '4 '#f '#f)))
               (_%dispatch252379%_ _%e252336252376%_))
          (_%K252332252360%_
           _%dispatch252379%_
           _%arity252374%_
           _%signature252369%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self252177%_)
        (let ((_%self252180%_ _%self252177%_))
          (letrec ((_%clause-e252191%_
                    (lambda (_%clause252193%_)
                      (cdr (let ((__method254878
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause252193%_
                                     'typedecl))))
                             (if __method254878
                                 (let ()
                                   (declare (not safe))
                                   (__method254878 _%clause252193%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause252193%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e252191%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self252180%_
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
      (lambda (_%self252042%_)
        (let ((_%self252045%_ _%self252042%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252045%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252045%_
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
      (lambda (_%self251907%_)
        (let ((_%self251910%_ _%self251907%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251910%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self251910%_
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
      (lambda (_%self251772%_)
        (let ((_%self251775%_ _%self251772%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self251775%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
