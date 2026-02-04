(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770243157)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp222798
                   (let ((__obj222792
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
                       (gxc#optimizer-info:::init! __obj222792))
                     __obj222792)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp222798)))))
    (define gxc#optimize!
      (lambda (_%ctx222400%_)
        (let ((__tmp222800
               (lambda ()
                 (let ((__tmp222802
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx222400%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx222400%_)
                          (let ((__tmp222804
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp222803
                                 (##structure-ref
                                  _%ctx222400%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp222804 __tmp222803 '#t))
                          (let ((_%code222404%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx222400%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx222400%_
                             _%code222404%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp222801
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp222802
                    gxc#current-compile-local-type
                    __tmp222801))))
              (__tmp222799 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp222800
           gxc#current-compile-mutators
           __tmp222799))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx222386%_)
        (letrec ((_%load-it!222388%_
                  (lambda (_%id222398%_)
                    (if (let ((__tmp222805
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp222805 _%id222398%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id222398%_)
                          (let ((__tmp222806
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp222806 _%id222398%_ '#t)))))))
          (let* ((_%modid222390%_
                  (##structure-ref
                   _%ctx222386%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str222392%_ (symbol->string _%modid222390%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str222392%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str222392%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!222388%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!222388%_
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
      (lambda (_%ctx222323%_)
        (letrec* ((_%deps222325%_
                   (let* ((_%imports222376%_
                           (##structure-ref
                            _%ctx222323%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e222378%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx222323%_))))
                     (if _%$e222378%_
                         ((lambda (_%g222380222382%_)
                            (cons _%g222380222382%_ _%imports222376%_))
                          _%$e222378%_)
                         _%imports222376%_))))
          (let _%lp222327%_ ((_%rest222329%_ _%deps222325%_))
            (let* ((_%rest222330222338%_ _%rest222329%_)
                   (_%else222332222346%_ (lambda () '#!void))
                   (_%K222334222364%_
                    (lambda (_%rest222349%_ _%hd222350%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd222350%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp222808
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp222807
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd222350%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp222808 __tmp222807))
                                '#!void
                                (begin
                                  (let ((_%$e222353%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd222350%_))))
                                    (if _%$e222353%_
                                        ((lambda (_%pre222356%_)
                                           (_%lp222327%_
                                            (cons _%pre222356%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd222350%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e222353%_)
                                        (_%lp222327%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd222350%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd222350%_)))
                            (_%lp222327%_ _%rest222349%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd222350%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp222810
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp222809
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd222350%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp222810 __tmp222809))
                                    '#!void
                                    (begin
                                      (_%lp222327%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd222350%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd222350%_)))
                                (_%lp222327%_ _%rest222349%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd222350%_
                                     'gx#module-import::t))
                                  (_%lp222327%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd222350%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest222349%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd222350%_
                                         'gx#module-export::t))
                                      (_%lp222327%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd222350%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest222349%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd222350%_
                                             'gx#import-set::t))
                                          (_%lp222327%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd222350%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest222349%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd222350%_))))))))))
              (if (pair? _%rest222330222338%_)
                  (let ((_%hd222335222367%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest222330222338%_)))
                        (_%tl222336222369%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest222330222338%_))))
                    (let* ((_%hd222372%_ _%hd222335222367%_)
                           (_%rest222374%_ _%tl222336222369%_))
                      (_%K222334222364%_ _%rest222374%_ _%hd222372%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx222303%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx222303%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx222303%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht222305%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id222307%_
                    (##structure-ref
                     _%ctx222303%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod222309%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht222305%_ _%id222307%_)))
                   (_%$e222312%_ _%mod222309%_))
              (if _%$e222312%_
                  _%$e222312%_
                  (let* ((_%mod222315%_
                          (gxc#optimizer-import-ssxi _%ctx222303%_))
                         (_%val222320%_
                          (let ((_%$e222317%_ _%mod222315%_))
                            (if _%$e222317%_ _%$e222317%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht222305%_ _%id222307%_ _%val222320%_))
                    _%val222320%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx222301%_)
        (if (##structure-ref _%ctx222301%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx222301%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id222279%_)
        (letrec ((_%catch-e222281%_
                  (lambda (_%exn222299%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn222299%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn222299%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id222279%_))))
                    '#f))
                 (_%import-e222282%_
                  (lambda ()
                    (let* ((_%str-id222285%_
                            (let ((__tmp222811
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id222279%_))))
                              (declare (not safe))
                              (##string-append __tmp222811 '".ssxi")))
                           (_%artefact-path222292%_
                            (let ((_%odir222286222288%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir222286222288%_
                                  (let ((_%odir222290%_ _%odir222286222288%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id222285%_
                                        '".ss"))
                                     _%odir222290%_))
                                  '#f)))
                           (_%library-path222294%_
                            (let ((__tmp222812
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id222285%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp222812)))
                           (_%ssxi-path222296%_
                            (if (and _%artefact-path222292%_
                                     (file-exists? _%artefact-path222292%_))
                                _%artefact-path222292%_
                                _%library-path222294%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path222296%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path222296%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e222281%_ _%import-e222282%_)))))
    (define gxc#optimize-source
      (lambda (_%stx222264%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx222264%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx222264%_))
        (let* ((_%stx222266%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx222264%_)))
               (_%stx222268%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx222266%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx222268%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx222268%_))
          (let _%fixpoint222271%_ ((_%current222273%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx222268%_))
            (let ((_%refined222275%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current222273%_ _%refined222275%_)
                  '#!void
                  (_%fixpoint222271%_ _%refined222275%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx222268%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx222268%_))
          (let ((_%stx222277%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx222268%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx222277%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp222814 (list gxc#::generate-runtime-empty::t))
            (__tmp222813 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp222814
         '()
         __tmp222813
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args222261%_
        (apply make-instance gxc#::generate-ssxi::t _%$args222261%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp222815
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
        (__make-atomic-promise __tmp222815)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx222253%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self222256%_
                (let ((__obj222794
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj222794))
               (__tmp222816
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self222256%_ _%stx222253%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp222816
           gxc#current-compile-method
           _%self222256%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self222213%_ _%stx222214%_)
        (let* ((_%g222216222226%_
                (lambda (_%g222217222223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g222217222223%_))))
               (_%g222215222250%_
                (lambda (_%g222217222229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g222217222229%_))
                      (let ((_%e222219222231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g222217222229%_))))
                        (let ((_%hd222220222234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e222219222231%_)))
                              (_%tl222221222236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e222219222231%_))))
                          ((lambda (_%g222218222239%_)
                             (let ((__tmp222819
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self222213%_
                                         _%stx222214%_))))
                                   (__tmp222817
                                    (let ((__tmp222818
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp222818 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp222819
                                gx#current-expander-phi
                                __tmp222817)))
                           _%tl222221222236%_)))
                      (_%g222216222226%_ _%g222217222229%_)))))
          (_%g222215222250%_ _%stx222214%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self222152%_ _%stx222153%_)
        (let* ((_%g222155222169%_
                (lambda (_%g222156222166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g222156222166%_))))
               (_%g222154222210%_
                (lambda (_%g222156222172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g222156222172%_))
                      (let ((_%e222159222174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g222156222172%_))))
                        (let ((_%hd222160222177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e222159222174%_)))
                              (_%tl222161222179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e222159222174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl222161222179%_))
                              (let ((_%e222162222182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl222161222179%_))))
                                (let ((_%hd222163222185%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e222162222182%_)))
                                      (_%tl222164222187%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e222162222182%_))))
                                  ((lambda (_%g222157222190%_
                                            _%g222158222191%_)
                                     (let* ((_%ctx222204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g222158222191%_)))
                                            (_%code222206%_
                                             (##structure-ref
                                              _%ctx222204%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp222820
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self222152%_
                                                  _%code222206%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp222820
                                        gx#current-expander-context
                                        _%ctx222204%_)))
                                   _%tl222164222187%_
                                   _%hd222163222185%_)))
                              (_%g222155222169%_ _%g222156222172%_))))
                      (_%g222155222169%_ _%g222156222172%_)))))
          (_%g222154222210%_ _%stx222153%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self221959%_ _%stx221960%_)
        (letrec ((_%generate-e221962%_
                  (lambda (_%id222137%_)
                    (let* ((_%sym222139%_
                            (if (let ((__tmp222821
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp222821))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id222137%_))
                                '#f))
                           (_%$e222141%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym222139%_))))
                      (if _%$e222141%_
                          ((lambda (_%klass222144%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym222139%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym222139%_
                                                     (cons (let ((__method222795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass222144%_ 'typedecl))))
                     (if __method222795
                         (let ()
                           (declare (not safe))
                           (__method222795 _%klass222144%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass222144%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym222139%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym222139%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e222141%_)
                          (let ((_%$e222146%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym222139%_))))
                            (if _%$e222146%_
                                ((lambda (_%type222149%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym222139%_
                                      '" "
                                      _%type222149%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type222149%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym222139%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym222139%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type222149%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym222139%_
                                                   (cons (let ((__method222796
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type222149%_ 'typedecl))))
                   (if __method222796
                       (let ()
                         (declare (not safe))
                         (__method222796 _%type222149%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type222149%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e222146%_)
                                '(begin))))))))
          (let* ((_%__stx222407222408%_ _%stx221960%_)
                 (_%g221965222003%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx222407222408%_)))))
            (let ((_%__kont222409222410%_
                   (lambda (_%g221967222119%_)
                     (_%generate-e221962%_ _%g221967222119%_)))
                  (_%__kont222411222412%_
                   (lambda (_%g221980222054%_)
                     (let ((_%types222080%_
                            (map _%generate-e221962%_
                                 (let ((__tmp222822
                                        (lambda (_%g222072222075%_
                                                 _%g222073222077%_)
                                          (cons _%g222072222075%_
                                                _%g222073222077%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp222822
                                    '()
                                    _%g221980222054%_)))))
                       (cons 'begin _%types222080%_)))))
              (let ((_%__match222462222463%_
                     (lambda (_%e221981222008%_
                              _%hd221982222011%_
                              _%tl221983222013%_
                              _%e221984222016%_
                              _%hd221985222019%_
                              _%tl221986222021%_
                              _%__splice222413222414%_
                              _%target221987222024%_
                              _%tl221989222026%_)
                       (letrec ((_%loop221990222029%_
                                 (lambda (_%hd221988222032%_
                                          _%id221994222034%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd221988222032%_))
                                       (let ((_%e221991222036%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd221988222032%_))))
                                         (let ((_%lp-tl221993222041%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e221991222036%_)))
                                               (_%lp-hd221992222039%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e221991222036%_))))
                                           (_%loop221990222029%_
                                            _%lp-tl221993222041%_
                                            (cons _%lp-hd221992222039%_
                                                  _%id221994222034%_))))
                                       (let ((_%id221995222044%_
                                              (reverse _%id221994222034%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl221986222021%_))
                                             (let ((_%e221996222046%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl221986222021%_))))
                                               (let ((_%tl221998222051%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e221996222046%_)))
                                                     (_%hd221997222049%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e221996222046%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl221998222051%_))
                                                     (_%__kont222411222412%_
                                                      _%id221995222044%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g221965222003%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g221965222003%_))))))))
                         (_%loop221990222029%_ _%target221987222024%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx222407222408%_))
                    (let ((_%e221968222087%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx222407222408%_))))
                      (let ((_%tl221970222092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e221968222087%_)))
                            (_%hd221969222090%_
                             (let ()
                               (declare (not safe))
                               (##car _%e221968222087%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl221970222092%_))
                            (let ((_%e221971222095%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl221970222092%_))))
                              (let ((_%tl221973222100%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e221971222095%_)))
                                    (_%hd221972222098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e221971222095%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd221972222098%_))
                                    (let ((_%e221974222103%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd221972222098%_))))
                                      (let ((_%tl221976222108%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e221974222103%_)))
                                            (_%hd221975222106%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e221974222103%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl221976222108%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl221973222100%_))
                                                (let ((_%e221977222111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl221973222100%_))))
                                                  (let ((_%tl221979222116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e221977222111%_)))
                                                        (_%hd221978222114%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e221977222111%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl221979222116%_))
                                                        (_%__kont222409222410%_
                                                         _%hd221975222106%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd221972222098%_))
                                                            (let ((_%__splice222413222414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd221972222098%_
                              '0))))
                      (let ((_%tl221989222026%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice222413222414%_ '1)))
                            (_%target221987222024%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice222413222414%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl221989222026%_))
                            (_%__match222462222463%_
                             _%e221968222087%_
                             _%hd221969222090%_
                             _%tl221970222092%_
                             _%e221971222095%_
                             _%hd221972222098%_
                             _%tl221973222100%_
                             _%__splice222413222414%_
                             _%target221987222024%_
                             _%tl221989222026%_)
                            (let ()
                              (declare (not safe))
                              (_%g221965222003%_)))))
                    (let () (declare (not safe)) (_%g221965222003%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd221972222098%_))
                                                    (let ((_%__splice222413222414%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd221972222098%_
                                                              '0))))
                                                      (let ((_%tl221989222026%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice222413222414%_ '1)))
                    (_%target221987222024%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice222413222414%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl221989222026%_))
                    (_%__match222462222463%_
                     _%e221968222087%_
                     _%hd221969222090%_
                     _%tl221970222092%_
                     _%e221971222095%_
                     _%hd221972222098%_
                     _%tl221973222100%_
                     _%__splice222413222414%_
                     _%target221987222024%_
                     _%tl221989222026%_)
                    (let () (declare (not safe)) (_%g221965222003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g221965222003%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd221972222098%_))
                                                (let ((_%__splice222413222414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd221972222098%_
                                                          '0))))
                                                  (let ((_%tl221989222026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice222413222414%_
                                                            '1)))
                                                        (_%target221987222024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice222413222414%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl221989222026%_))
                                                        (_%__match222462222463%_
                                                         _%e221968222087%_
                                                         _%hd221969222090%_
                                                         _%tl221970222092%_
                                                         _%e221971222095%_
                                                         _%hd221972222098%_
                                                         _%tl221973222100%_
                                                         _%__splice222413222414%_
                                                         _%target221987222024%_
                                                         _%tl221989222026%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g221965222003%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g221965222003%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd221972222098%_))
                                        (let ((_%__splice222413222414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd221972222098%_
                                                  '0))))
                                          (let ((_%tl221989222026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice222413222414%_
                                                    '1)))
                                                (_%target221987222024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice222413222414%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl221989222026%_))
                                                (_%__match222462222463%_
                                                 _%e221968222087%_
                                                 _%hd221969222090%_
                                                 _%tl221970222092%_
                                                 _%e221971222095%_
                                                 _%hd221972222098%_
                                                 _%tl221973222100%_
                                                 _%__splice222413222414%_
                                                 _%target221987222024%_
                                                 _%tl221989222026%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g221965222003%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g221965222003%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g221965222003%_)))))
                    (let () (declare (not safe)) (_%g221965222003%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self221512%_ _%stx221513%_)
        (let* ((_%__stx222465222466%_ _%stx221513%_)
               (_%g221517221619%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx222465222466%_)))))
          (let ((_%__kont222467222468%_
                 (lambda (_%g221519221909%_
                          _%g221520221910%_
                          _%g221521221911%_
                          _%g221522221912%_
                          _%g221523221913%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g221522221912%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g221521221911%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g221520221910%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g221519221909%_))
                                                 '())))))))
                (_%__kont222469222470%_
                 (lambda (_%g221572221735%_
                          _%g221573221736%_
                          _%g221574221737%_
                          _%g221575221738%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g221574221737%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g221573221736%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g221572221735%_))
                                           (cons '#f '())))))))
                (_%__kont222471222472%_ (lambda () '(begin))))
            (let ((_%__match222600222601%_
                   (lambda (_%e221524221781%_
                            _%hd221525221784%_
                            _%tl221526221786%_
                            _%e221527221789%_
                            _%hd221528221792%_
                            _%tl221529221794%_
                            _%e221530221797%_
                            _%hd221531221800%_
                            _%tl221532221802%_
                            _%e221533221805%_
                            _%hd221534221808%_
                            _%tl221535221810%_
                            _%e221536221813%_
                            _%hd221537221816%_
                            _%tl221538221818%_
                            _%e221539221821%_
                            _%hd221540221824%_
                            _%tl221541221826%_
                            _%e221542221829%_
                            _%hd221543221832%_
                            _%tl221544221834%_
                            _%e221545221837%_
                            _%hd221546221840%_
                            _%tl221547221842%_
                            _%e221548221845%_
                            _%hd221549221848%_
                            _%tl221550221850%_
                            _%e221551221853%_
                            _%hd221552221856%_
                            _%tl221553221858%_
                            _%e221554221861%_
                            _%hd221555221864%_
                            _%tl221556221866%_
                            _%e221557221869%_
                            _%hd221558221872%_
                            _%tl221559221874%_
                            _%e221560221877%_
                            _%hd221561221880%_
                            _%tl221562221882%_
                            _%e221563221885%_
                            _%hd221564221888%_
                            _%tl221565221890%_
                            _%e221566221893%_
                            _%hd221567221896%_
                            _%tl221568221898%_
                            _%e221569221901%_
                            _%hd221570221904%_
                            _%tl221571221906%_)
                     (let ((_%g221519221909%_ _%hd221570221904%_)
                           (_%g221520221910%_ _%hd221561221880%_)
                           (_%g221521221911%_ _%hd221552221856%_)
                           (_%g221522221912%_ _%hd221543221832%_)
                           (_%g221523221913%_ _%hd221534221808%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g221523221913%_
                              'bind-method!))
                           (_%__kont222467222468%_
                            _%g221519221909%_
                            _%g221520221910%_
                            _%g221521221911%_
                            _%g221522221912%_
                            _%g221523221913%_)
                           (_%__kont222471222472%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx222465222466%_))
                  (let ((_%e221524221781%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx222465222466%_))))
                    (let ((_%tl221526221786%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e221524221781%_)))
                          (_%hd221525221784%_
                           (let ()
                             (declare (not safe))
                             (##car _%e221524221781%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl221526221786%_))
                          (let ((_%e221527221789%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl221526221786%_))))
                            (let ((_%tl221529221794%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e221527221789%_)))
                                  (_%hd221528221792%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e221527221789%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd221528221792%_))
                                  (let ((_%e221530221797%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd221528221792%_))))
                                    (let ((_%tl221532221802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e221530221797%_)))
                                          (_%hd221531221800%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e221530221797%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd221531221800%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd221531221800%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl221532221802%_))
                                                  (let ((_%e221533221805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl221532221802%_))))
                                                    (let ((_%tl221535221810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e221533221805%_)))
                                                          (_%hd221534221808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e221533221805%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl221535221810%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl221529221794%_))
                      (let ((_%e221536221813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl221529221794%_))))
                        (let ((_%tl221538221818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e221536221813%_)))
                              (_%hd221537221816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e221536221813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd221537221816%_))
                              (let ((_%e221539221821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd221537221816%_))))
                                (let ((_%tl221541221826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e221539221821%_)))
                                      (_%hd221540221824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e221539221821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd221540221824%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd221540221824%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl221541221826%_))
                                              (let ((_%e221542221829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl221541221826%_))))
                                                (let ((_%tl221544221834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e221542221829%_)))
                                                      (_%hd221543221832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e221542221829%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl221544221834%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl221538221818%_))
                                                          (let ((_%e221545221837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl221538221818%_))))
                    (let ((_%tl221547221842%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e221545221837%_)))
                          (_%hd221546221840%_
                           (let ()
                             (declare (not safe))
                             (##car _%e221545221837%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd221546221840%_))
                          (let ((_%e221548221845%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd221546221840%_))))
                            (let ((_%tl221550221850%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e221548221845%_)))
                                  (_%hd221549221848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e221548221845%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd221549221848%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd221549221848%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl221550221850%_))
                                          (let ((_%e221551221853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl221550221850%_))))
                                            (let ((_%tl221553221858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e221551221853%_)))
                                                  (_%hd221552221856%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e221551221853%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl221553221858%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl221547221842%_))
                                                      (let ((_%e221554221861%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl221547221842%_))))
                (let ((_%tl221556221866%_
                       (let () (declare (not safe)) (##cdr _%e221554221861%_)))
                      (_%hd221555221864%_
                       (let ()
                         (declare (not safe))
                         (##car _%e221554221861%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd221555221864%_))
                      (let ((_%e221557221869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd221555221864%_))))
                        (let ((_%tl221559221874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e221557221869%_)))
                              (_%hd221558221872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e221557221869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd221558221872%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd221558221872%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl221559221874%_))
                                      (let ((_%e221560221877%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl221559221874%_))))
                                        (let ((_%tl221562221882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e221560221877%_)))
                                              (_%hd221561221880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e221560221877%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl221562221882%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl221556221866%_))
                                                  (let ((_%e221563221885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl221556221866%_))))
                                                    (let ((_%tl221565221890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e221563221885%_)))
                                                          (_%hd221564221888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e221563221885%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd221564221888%_))
                                                          (let ((_%e221566221893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd221564221888%_))))
                    (let ((_%tl221568221898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e221566221893%_)))
                          (_%hd221567221896%_
                           (let ()
                             (declare (not safe))
                             (##car _%e221566221893%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd221567221896%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd221567221896%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl221568221898%_))
                                  (let ((_%e221569221901%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl221568221898%_))))
                                    (let ((_%tl221571221906%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e221569221901%_)))
                                          (_%hd221570221904%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e221569221901%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl221571221906%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl221565221890%_))
                                              (_%__match222600222601%_
                                               _%e221524221781%_
                                               _%hd221525221784%_
                                               _%tl221526221786%_
                                               _%e221527221789%_
                                               _%hd221528221792%_
                                               _%tl221529221794%_
                                               _%e221530221797%_
                                               _%hd221531221800%_
                                               _%tl221532221802%_
                                               _%e221533221805%_
                                               _%hd221534221808%_
                                               _%tl221535221810%_
                                               _%e221536221813%_
                                               _%hd221537221816%_
                                               _%tl221538221818%_
                                               _%e221539221821%_
                                               _%hd221540221824%_
                                               _%tl221541221826%_
                                               _%e221542221829%_
                                               _%hd221543221832%_
                                               _%tl221544221834%_
                                               _%e221545221837%_
                                               _%hd221546221840%_
                                               _%tl221547221842%_
                                               _%e221548221845%_
                                               _%hd221549221848%_
                                               _%tl221550221850%_
                                               _%e221551221853%_
                                               _%hd221552221856%_
                                               _%tl221553221858%_
                                               _%e221554221861%_
                                               _%hd221555221864%_
                                               _%tl221556221866%_
                                               _%e221557221869%_
                                               _%hd221558221872%_
                                               _%tl221559221874%_
                                               _%e221560221877%_
                                               _%hd221561221880%_
                                               _%tl221562221882%_
                                               _%e221563221885%_
                                               _%hd221564221888%_
                                               _%tl221565221890%_
                                               _%e221566221893%_
                                               _%hd221567221896%_
                                               _%tl221568221898%_
                                               _%e221569221901%_
                                               _%hd221570221904%_
                                               _%tl221571221906%_)
                                              (_%__kont222471222472%_))
                                          (_%__kont222471222472%_))))
                                  (_%__kont222471222472%_))
                              (_%__kont222471222472%_))
                          (_%__kont222471222472%_))))
                  (_%__kont222471222472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl221556221866%_))
                                                      (if (let ((__tmp222823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp222823 'bind-method!))
                  (let ((_%g221572221735%_ _%hd221561221880%_)
                        (_%g221573221736%_ _%hd221552221856%_)
                        (_%g221574221737%_ _%hd221543221832%_)
                        (_%g221575221738%_ _%hd221534221808%_))
                    (_%__kont222469222470%_
                     _%g221572221735%_
                     _%g221573221736%_
                     _%g221574221737%_
                     _%g221575221738%_))
                  (_%__kont222471222472%_))
              (_%__kont222471222472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont222471222472%_))))
                                      (_%__kont222471222472%_))
                                  (_%__kont222471222472%_))
                              (_%__kont222471222472%_))))
                      (_%__kont222471222472%_))))
              (_%__kont222471222472%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont222471222472%_))))
                                          (_%__kont222471222472%_))
                                      (_%__kont222471222472%_))
                                  (_%__kont222471222472%_))))
                          (_%__kont222471222472%_))))
                  (_%__kont222471222472%_))
              (_%__kont222471222472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont222471222472%_))
                                          (_%__kont222471222472%_))
                                      (_%__kont222471222472%_))))
                              (_%__kont222471222472%_))))
                      (_%__kont222471222472%_))
                  (_%__kont222471222472%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont222471222472%_))
                                              (_%__kont222471222472%_))
                                          (_%__kont222471222472%_))))
                                  (_%__kont222471222472%_))))
                          (_%__kont222471222472%_))))
                  (_%__kont222471222472%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self221336%_ _%stx221337%_)
        (let* ((_%__stx222709222710%_ _%stx221337%_)
               (_%g221340221380%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx222709222710%_)))))
          (let ((_%__kont222711222712%_
                 (lambda (_%g221342221486%_ _%g221343221487%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g221343221487%_))
                               (cons _%g221342221486%_ '())))))
                (_%__kont222713222714%_
                 (lambda (_%g221365221409%_ _%g221366221410%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx222709222710%_))
                (let ((_%e221344221430%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx222709222710%_))))
                  (let ((_%tl221346221435%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e221344221430%_)))
                        (_%hd221345221433%_
                         (let ()
                           (declare (not safe))
                           (##car _%e221344221430%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl221346221435%_))
                        (let ((_%e221347221438%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl221346221435%_))))
                          (let ((_%tl221349221443%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e221347221438%_)))
                                (_%hd221348221441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e221347221438%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd221348221441%_))
                                (let ((_%e221350221446%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd221348221441%_))))
                                  (let ((_%tl221352221451%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e221350221446%_)))
                                        (_%hd221351221449%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e221350221446%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd221351221449%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd221351221449%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl221352221451%_))
                                                (let ((_%e221353221454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl221352221451%_))))
                                                  (let ((_%tl221355221459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e221353221454%_)))
                                                        (_%hd221354221457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e221353221454%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl221355221459%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl221349221443%_))
                                                            (let ((_%e221356221462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl221349221443%_))))
                      (let ((_%tl221358221467%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e221356221462%_)))
                            (_%hd221357221465%_
                             (let ()
                               (declare (not safe))
                               (##car _%e221356221462%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd221357221465%_))
                            (let ((_%e221359221470%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd221357221465%_))))
                              (let ((_%tl221361221475%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e221359221470%_)))
                                    (_%hd221360221473%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e221359221470%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd221360221473%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd221360221473%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl221361221475%_))
                                            (let ((_%e221362221478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl221361221475%_))))
                                              (let ((_%tl221364221483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e221362221478%_)))
                                                    (_%hd221363221481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e221362221478%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl221364221483%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl221358221467%_))
                                                        (_%__kont222711222712%_
                                                         _%hd221363221481%_
                                                         _%hd221354221457%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g221340221380%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl221358221467%_))
                                                        (_%__kont222713222714%_
                                                         _%hd221357221465%_
                                                         _%hd221348221441%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g221340221380%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl221358221467%_))
                                                (_%__kont222713222714%_
                                                 _%hd221357221465%_
                                                 _%hd221348221441%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g221340221380%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl221358221467%_))
                                            (_%__kont222713222714%_
                                             _%hd221357221465%_
                                             _%hd221348221441%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g221340221380%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl221358221467%_))
                                        (_%__kont222713222714%_
                                         _%hd221357221465%_
                                         _%hd221348221441%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g221340221380%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl221358221467%_))
                                (_%__kont222713222714%_
                                 _%hd221357221465%_
                                 _%hd221348221441%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g221340221380%_))))))
                    (let () (declare (not safe)) (_%g221340221380%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl221349221443%_))
                    (let ((_%e221373221401%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl221349221443%_))))
                      (let ((_%tl221375221406%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e221373221401%_)))
                            (_%hd221374221404%_
                             (let ()
                               (declare (not safe))
                               (##car _%e221373221401%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl221375221406%_))
                            (_%__kont222713222714%_
                             _%hd221374221404%_
                             _%hd221348221441%_)
                            (let ()
                              (declare (not safe))
                              (_%g221340221380%_)))))
                    (let () (declare (not safe)) (_%g221340221380%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl221349221443%_))
                                                    (let ((_%e221373221401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl221349221443%_))))
                                                      (let ((_%tl221375221406%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e221373221401%_)))
                    (_%hd221374221404%_
                     (let () (declare (not safe)) (##car _%e221373221401%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl221375221406%_))
                    (_%__kont222713222714%_
                     _%hd221374221404%_
                     _%hd221348221441%_)
                    (let () (declare (not safe)) (_%g221340221380%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g221340221380%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl221349221443%_))
                                                (let ((_%e221373221401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl221349221443%_))))
                                                  (let ((_%tl221375221406%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e221373221401%_)))
                                                        (_%hd221374221404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e221373221401%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl221375221406%_))
                                                        (_%__kont222713222714%_
                                                         _%hd221374221404%_
                                                         _%hd221348221441%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g221340221380%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g221340221380%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl221349221443%_))
                                            (let ((_%e221373221401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl221349221443%_))))
                                              (let ((_%tl221375221406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e221373221401%_)))
                                                    (_%hd221374221404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e221373221401%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl221375221406%_))
                                                    (_%__kont222713222714%_
                                                     _%hd221374221404%_
                                                     _%hd221348221441%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g221340221380%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g221340221380%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl221349221443%_))
                                    (let ((_%e221373221401%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl221349221443%_))))
                                      (let ((_%tl221375221406%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e221373221401%_)))
                                            (_%hd221374221404%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e221373221401%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl221375221406%_))
                                            (_%__kont222713222714%_
                                             _%hd221374221404%_
                                             _%hd221348221441%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g221340221380%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g221340221380%_))))))
                        (let () (declare (not safe)) (_%g221340221380%_)))))
                (let () (declare (not safe)) (_%g221340221380%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self221323%_)
        (let ((_%self221326%_ _%self221323%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self221326%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self221097%_)
        (let* ((_%self221100%_ _%self221097%_)
               (_%self221109221125%_ _%self221100%_)
               (_%E221111221128%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self221109221125%_
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
               (_%K221112221143%_
                (lambda (_%methods221131%_
                         _%metaclass221132%_
                         _%system?221133%_
                         _%final?221134%_
                         _%struct?221135%_
                         _%constructor221136%_
                         _%fields221137%_
                         _%slots221138%_
                         _%precendence-list221139%_
                         _%super221140%_
                         _%id221141%_)
                  (cons '@class
                        (cons _%id221141%_
                              (cons _%super221140%_
                                    (cons _%precendence-list221139%_
                                          (cons _%slots221138%_
                                                (cons _%fields221137%_
                                                      (cons _%constructor221136%_
                                                            (cons _%struct?221135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?221134%_
                                (cons _%system?221133%_
                                      (cons _%metaclass221132%_
                                            (cons (if _%methods221131%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods221131%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e221113221146%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '1 '#f '#f)))
               (_%id221149%_ _%e221113221146%_)
               (_%e221114221151%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '2 '#f '#f)))
               (_%super221154%_ _%e221114221151%_)
               (_%e221115221156%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '3 '#f '#f)))
               (_%precendence-list221159%_ _%e221115221156%_)
               (_%e221116221161%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '4 '#f '#f)))
               (_%slots221164%_ _%e221116221161%_)
               (_%e221117221166%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '5 '#f '#f)))
               (_%fields221169%_ _%e221117221166%_)
               (_%e221118221171%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '6 '#f '#f)))
               (_%constructor221174%_ _%e221118221171%_)
               (_%e221119221176%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '7 '#f '#f)))
               (_%struct?221179%_ _%e221119221176%_)
               (_%e221120221181%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '8 '#f '#f)))
               (_%final?221184%_ _%e221120221181%_)
               (_%e221121221186%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self221109221125%_ '9 '#f '#f)))
               (_%system?221189%_ _%e221121221186%_)
               (_%e221122221191%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self221109221125%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass221194%_ _%e221122221191%_)
               (_%e221123221196%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self221109221125%_
                   '11
                   '#f
                   '#f)))
               (_%methods221199%_ _%e221123221196%_))
          (_%K221112221143%_
           _%methods221199%_
           _%metaclass221194%_
           _%system?221189%_
           _%final?221184%_
           _%struct?221179%_
           _%constructor221174%_
           _%fields221169%_
           _%slots221164%_
           _%precendence-list221159%_
           _%super221154%_
           _%id221149%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self220962%_)
        (let ((_%self220965%_ _%self220962%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self220965%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self220827%_)
        (let ((_%self220830%_ _%self220827%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self220830%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self220692%_)
        (let ((_%self220695%_ _%self220692%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self220695%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self220695%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self220695%_
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
      (lambda (_%self220557%_)
        (let ((_%self220560%_ _%self220557%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self220560%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self220560%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self220560%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self220422%_)
        (let ((_%self220425%_ _%self220422%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self220425%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self220425%_
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
      (lambda (_%self220236%_)
        (let* ((_%self220239%_ _%self220236%_)
               (_%self220248220257%_ _%self220239%_)
               (_%E220250220260%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self220248220257%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K220251220279%_
                (lambda (_%dispatch220263%_
                         _%arity220264%_
                         _%signature220265%_)
                  (if _%signature220265%_
                      (let ((_%signature220267%_ _%signature220265%_))
                        (cons '@lambda
                              (cons _%arity220264%_
                                    (cons _%dispatch220263%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature220267%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature220267%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature220267%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature220267%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature220267%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity220264%_
                                  (cons _%dispatch220263%_ '()))))))
               (_%e220252220282%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self220248220257%_ '1 '#f '#f)))
               (_%e220253220285%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self220248220257%_ '2 '#f '#f)))
               (_%signature220288%_ _%e220253220285%_)
               (_%e220254220290%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self220248220257%_ '3 '#f '#f)))
               (_%arity220293%_ _%e220254220290%_)
               (_%e220255220295%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self220248220257%_ '4 '#f '#f)))
               (_%dispatch220298%_ _%e220255220295%_))
          (_%K220251220279%_
           _%dispatch220298%_
           _%arity220293%_
           _%signature220288%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self220096%_)
        (let ((_%self220099%_ _%self220096%_))
          (letrec ((_%clause-e220110%_
                    (lambda (_%clause220112%_)
                      (cdr (let ((__method222797
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause220112%_
                                     'typedecl))))
                             (if __method222797
                                 (let ()
                                   (declare (not safe))
                                   (__method222797 _%clause220112%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause220112%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e220110%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self220099%_
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
      (lambda (_%self219961%_)
        (let ((_%self219964%_ _%self219961%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219964%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self219964%_
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
      (lambda (_%self219826%_)
        (let ((_%self219829%_ _%self219826%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219829%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self219829%_
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
      (lambda (_%self219691%_)
        (let ((_%self219694%_ _%self219691%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self219694%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
