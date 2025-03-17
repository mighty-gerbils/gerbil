(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1742222183)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp201929
                   (let ((__obj201923
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
                       (gxc#optimizer-info:::init! __obj201923))
                     __obj201923)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp201929)))))
    (define gxc#optimize!
      (lambda (_%ctx201532%_)
        (let ((__tmp201932
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx201532%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx201532%_)
                 (let ((__tmp201934
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp201933
                        (##structure-ref
                         _%ctx201532%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp201934 __tmp201933 '#t))
                 (let ((_%code201535%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx201532%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx201532%_
                    _%code201535%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp201931 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201930 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201932
           gxc#current-compile-mutators
           __tmp201931
           gxc#current-compile-local-type
           __tmp201930))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx201518%_)
        (letrec ((_%load-it!201520%_
                  (lambda (_%id201530%_)
                    (if (let ((__tmp201935
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp201935 _%id201530%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id201530%_)
                          (let ((__tmp201936
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp201936 _%id201530%_ '#t)))))))
          (let* ((_%modid201522%_
                  (##structure-ref
                   _%ctx201518%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str201524%_ (symbol->string _%modid201522%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str201524%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str201524%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201520%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201520%_
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
      (lambda (_%ctx201455%_)
        (letrec* ((_%deps201457%_
                   (let* ((_%imports201508%_
                           (##structure-ref
                            _%ctx201455%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e201510%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx201455%_))))
                     (if _%$e201510%_
                         ((lambda (_%g201512201514%_)
                            (cons _%g201512201514%_ _%imports201508%_))
                          _%$e201510%_)
                         _%imports201508%_))))
          (let _%lp201459%_ ((_%rest201461%_ _%deps201457%_))
            (let* ((_%rest201462201470%_ _%rest201461%_)
                   (_%else201464201478%_ (lambda () '#!void))
                   (_%K201466201496%_
                    (lambda (_%rest201481%_ _%hd201482%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd201482%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp201938
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp201937
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201482%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp201938 __tmp201937))
                                '#!void
                                (begin
                                  (let ((_%$e201485%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd201482%_))))
                                    (if _%$e201485%_
                                        ((lambda (_%pre201488%_)
                                           (_%lp201459%_
                                            (cons _%pre201488%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd201482%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e201485%_)
                                        (_%lp201459%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201482%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd201482%_)))
                            (_%lp201459%_ _%rest201481%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd201482%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp201940
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp201939
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd201482%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp201940 __tmp201939))
                                    '#!void
                                    (begin
                                      (_%lp201459%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201482%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd201482%_)))
                                (_%lp201459%_ _%rest201481%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd201482%_
                                     'gx#module-import::t))
                                  (_%lp201459%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201482%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest201481%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd201482%_
                                         'gx#module-export::t))
                                      (_%lp201459%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd201482%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest201481%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd201482%_
                                             'gx#import-set::t))
                                          (_%lp201459%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd201482%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest201481%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd201482%_))))))))))
              (if (pair? _%rest201462201470%_)
                  (let ((_%hd201467201499%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201462201470%_)))
                        (_%tl201468201501%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201462201470%_))))
                    (let* ((_%hd201504%_ _%hd201467201499%_)
                           (_%rest201506%_ _%tl201468201501%_))
                      (_%K201466201496%_ _%rest201506%_ _%hd201504%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx201435%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx201435%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx201435%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht201437%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id201439%_
                    (##structure-ref
                     _%ctx201435%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod201441%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht201437%_ _%id201439%_)))
                   (_%$e201444%_ _%mod201441%_))
              (if _%$e201444%_
                  _%$e201444%_
                  (let* ((_%mod201447%_
                          (gxc#optimizer-import-ssxi _%ctx201435%_))
                         (_%val201452%_
                          (let ((_%$e201449%_ _%mod201447%_))
                            (if _%$e201449%_ _%$e201449%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht201437%_ _%id201439%_ _%val201452%_))
                    _%val201452%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx201433%_)
        (if (##structure-ref _%ctx201433%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx201433%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id201410%_)
        (letrec ((_%catch-e201412%_
                  (lambda (_%exn201431%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn201431%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn201431%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id201410%_))))
                    '#f))
                 (_%import-e201413%_
                  (lambda ()
                    (let* ((_%str-id201416%_
                            (let ((__tmp201941
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id201410%_))))
                              (declare (not safe))
                              (##string-append __tmp201941 '".ssxi")))
                           (_%artefact-path201424%_
                            (let ((_%odir201417201419%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir201417201419%_
                                  (let ((_%odir201422%_ _%odir201417201419%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id201416%_
                                        '".ss"))
                                     _%odir201422%_))
                                  '#f)))
                           (_%library-path201426%_
                            (let ((__tmp201942
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id201416%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp201942)))
                           (_%ssxi-path201428%_
                            (if (and _%artefact-path201424%_
                                     (file-exists? _%artefact-path201424%_))
                                _%artefact-path201424%_
                                _%library-path201426%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path201428%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path201428%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e201412%_ _%import-e201413%_)))))
    (define gxc#optimize-source
      (lambda (_%stx201395%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx201395%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx201395%_))
        (let* ((_%stx201397%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx201395%_)))
               (_%stx201399%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx201397%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx201399%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx201399%_))
          (let _%fixpoint201402%_ ((_%current201404%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx201399%_))
            (let ((_%refined201406%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current201404%_ _%refined201406%_)
                  '#!void
                  (_%fixpoint201402%_ _%refined201406%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx201399%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx201399%_))
          (let ((_%stx201408%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx201399%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx201408%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp201944 (list gxc#::generate-runtime-empty::t))
            (__tmp201943 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp201944
         '()
         __tmp201943
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args201392%_
        (apply make-instance gxc#::generate-ssxi::t _%$args201392%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp201945
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
        (__make-promise __tmp201945)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx201384%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self201387%_
                (let ((__obj201925
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj201925))
               (__tmp201946
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201387%_ _%stx201384%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201946
           gxc#current-compile-method
           _%self201387%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self201344%_ _%stx201345%_)
        (let* ((_%g201347201357%_
                (lambda (_%g201348201354%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201348201354%_))))
               (_%g201346201381%_
                (lambda (_%g201348201360%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201348201360%_))
                      (let ((_%e201350201362%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201348201360%_))))
                        (let ((_%hd201351201365%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201350201362%_)))
                              (_%tl201352201367%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201350201362%_))))
                          ((lambda (_%L201370%_)
                             (let ((__tmp201949
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self201344%_
                                         _%stx201345%_))))
                                   (__tmp201947
                                    (let ((__tmp201948
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp201948 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp201949
                                gx#current-expander-phi
                                __tmp201947)))
                           _%tl201352201367%_)))
                      (_%g201347201357%_ _%g201348201360%_)))))
          (_%g201346201381%_ _%stx201345%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self201283%_ _%stx201284%_)
        (let* ((_%g201286201300%_
                (lambda (_%g201287201297%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201287201297%_))))
               (_%g201285201341%_
                (lambda (_%g201287201303%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201287201303%_))
                      (let ((_%e201290201305%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201287201303%_))))
                        (let ((_%hd201291201308%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201290201305%_)))
                              (_%tl201292201310%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201290201305%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201292201310%_))
                              (let ((_%e201293201313%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201292201310%_))))
                                (let ((_%hd201294201316%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201293201313%_)))
                                      (_%tl201295201318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201293201313%_))))
                                  ((lambda (_%L201321%_ _%L201322%_)
                                     (let* ((_%ctx201335%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L201322%_)))
                                            (_%code201337%_
                                             (##structure-ref
                                              _%ctx201335%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp201950
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self201283%_
                                                  _%code201337%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201950
                                        gx#current-expander-context
                                        _%ctx201335%_)))
                                   _%tl201295201318%_
                                   _%hd201294201316%_)))
                              (_%g201286201300%_ _%g201287201303%_))))
                      (_%g201286201300%_ _%g201287201303%_)))))
          (_%g201285201341%_ _%stx201284%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self201088%_ _%stx201089%_)
        (letrec ((_%generate-e201091%_
                  (lambda (_%id201268%_)
                    (let* ((_%sym201270%_
                            (if (let ((__tmp201951
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp201951))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id201268%_))
                                '#f))
                           (_%$e201272%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym201270%_))))
                      (if _%$e201272%_
                          ((lambda (_%klass201275%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym201270%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym201270%_
                                                     (cons (let ((__method201926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass201275%_ 'typedecl))))
                     (if __method201926
                         (let ()
                           (declare (not safe))
                           (__method201926 _%klass201275%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass201275%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym201270%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym201270%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e201272%_)
                          (let ((_%$e201277%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym201270%_))))
                            (if _%$e201277%_
                                ((lambda (_%type201280%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym201270%_
                                      '" "
                                      _%type201280%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type201280%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym201270%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym201270%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type201280%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym201270%_
                                                   (cons (let ((__method201927
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type201280%_ 'typedecl))))
                   (if __method201927
                       (let ()
                         (declare (not safe))
                         (__method201927 _%type201280%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type201280%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e201277%_)
                                '(begin))))))))
          (let* ((_%__stx201538201539%_ _%stx201089%_)
                 (_%g201094201132%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201538201539%_)))))
            (let ((_%__kont201540201541%_
                   (lambda (_%L201250%_) (_%generate-e201091%_ _%L201250%_)))
                  (_%__kont201542201543%_
                   (lambda (_%L201185%_)
                     (let ((_%types201211%_
                            (map _%generate-e201091%_
                                 (let ((__tmp201952
                                        (lambda (_%g201203201206%_
                                                 _%g201204201208%_)
                                          (cons _%g201203201206%_
                                                _%g201204201208%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp201952 '() _%L201185%_)))))
                       (cons 'begin _%types201211%_)))))
              (let ((_%__match201593201594%_
                     (lambda (_%e201110201137%_
                              _%hd201111201140%_
                              _%tl201112201142%_
                              _%e201113201145%_
                              _%hd201114201148%_
                              _%tl201115201150%_
                              _%__splice201544201545%_
                              _%target201116201153%_
                              _%tl201118201155%_)
                       (letrec ((_%loop201119201158%_
                                 (lambda (_%hd201117201161%_
                                          _%id201123201163%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd201117201161%_))
                                       (let ((_%e201120201166%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd201117201161%_))))
                                         (let ((_%lp-tl201122201171%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201120201166%_)))
                                               (_%lp-hd201121201169%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201120201166%_))))
                                           (_%loop201119201158%_
                                            _%lp-tl201122201171%_
                                            (cons _%lp-hd201121201169%_
                                                  _%id201123201163%_))))
                                       (let ((_%id201124201174%_
                                              (reverse _%id201123201163%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl201115201150%_))
                                             (let ((_%e201125201177%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl201115201150%_))))
                                               (let ((_%tl201127201182%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201125201177%_)))
                                                     (_%hd201126201180%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201125201177%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl201127201182%_))
                                                     (_%__kont201542201543%_
                                                      _%id201124201174%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201094201132%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g201094201132%_))))))))
                         (_%loop201119201158%_ _%target201116201153%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201538201539%_))
                    (let ((_%e201097201218%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201538201539%_))))
                      (let ((_%tl201099201223%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201097201218%_)))
                            (_%hd201098201221%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201097201218%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl201099201223%_))
                            (let ((_%e201100201226%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl201099201223%_))))
                              (let ((_%tl201102201231%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201100201226%_)))
                                    (_%hd201101201229%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201100201226%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd201101201229%_))
                                    (let ((_%e201103201234%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd201101201229%_))))
                                      (let ((_%tl201105201239%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201103201234%_)))
                                            (_%hd201104201237%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201103201234%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl201105201239%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201102201231%_))
                                                (let ((_%e201106201242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201102201231%_))))
                                                  (let ((_%tl201108201247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201106201242%_)))
                                                        (_%hd201107201245%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201106201242%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201108201247%_))
                                                        (_%__kont201540201541%_
                                                         _%hd201104201237%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd201101201229%_))
                                                            (let ((_%__splice201544201545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd201101201229%_
                              '0))))
                      (let ((_%tl201118201155%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201544201545%_ '1)))
                            (_%target201116201153%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201544201545%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201118201155%_))
                            (_%__match201593201594%_
                             _%e201097201218%_
                             _%hd201098201221%_
                             _%tl201099201223%_
                             _%e201100201226%_
                             _%hd201101201229%_
                             _%tl201102201231%_
                             _%__splice201544201545%_
                             _%target201116201153%_
                             _%tl201118201155%_)
                            (let ()
                              (declare (not safe))
                              (_%g201094201132%_)))))
                    (let () (declare (not safe)) (_%g201094201132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd201101201229%_))
                                                    (let ((_%__splice201544201545%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd201101201229%_
                                                              '0))))
                                                      (let ((_%tl201118201155%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice201544201545%_ '1)))
                    (_%target201116201153%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice201544201545%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl201118201155%_))
                    (_%__match201593201594%_
                     _%e201097201218%_
                     _%hd201098201221%_
                     _%tl201099201223%_
                     _%e201100201226%_
                     _%hd201101201229%_
                     _%tl201102201231%_
                     _%__splice201544201545%_
                     _%target201116201153%_
                     _%tl201118201155%_)
                    (let () (declare (not safe)) (_%g201094201132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201094201132%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd201101201229%_))
                                                (let ((_%__splice201544201545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd201101201229%_
                                                          '0))))
                                                  (let ((_%tl201118201155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201544201545%_
                                                            '1)))
                                                        (_%target201116201153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201544201545%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201118201155%_))
                                                        (_%__match201593201594%_
                                                         _%e201097201218%_
                                                         _%hd201098201221%_
                                                         _%tl201099201223%_
                                                         _%e201100201226%_
                                                         _%hd201101201229%_
                                                         _%tl201102201231%_
                                                         _%__splice201544201545%_
                                                         _%target201116201153%_
                                                         _%tl201118201155%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g201094201132%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201094201132%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd201101201229%_))
                                        (let ((_%__splice201544201545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd201101201229%_
                                                  '0))))
                                          (let ((_%tl201118201155%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201544201545%_
                                                    '1)))
                                                (_%target201116201153%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201544201545%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201118201155%_))
                                                (_%__match201593201594%_
                                                 _%e201097201218%_
                                                 _%hd201098201221%_
                                                 _%tl201099201223%_
                                                 _%e201100201226%_
                                                 _%hd201101201229%_
                                                 _%tl201102201231%_
                                                 _%__splice201544201545%_
                                                 _%target201116201153%_
                                                 _%tl201118201155%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201094201132%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201094201132%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g201094201132%_)))))
                    (let () (declare (not safe)) (_%g201094201132%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self200641%_ _%stx200642%_)
        (let* ((_%__stx201596201597%_ _%stx200642%_)
               (_%g200646200748%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201596201597%_)))))
          (let ((_%__kont201598201599%_
                 (lambda (_%L201038%_
                          _%L201039%_
                          _%L201040%_
                          _%L201041%_
                          _%L201042%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L201041%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L201040%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L201039%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L201038%_))
                                                 '())))))))
                (_%__kont201600201601%_
                 (lambda (_%L200864%_ _%L200865%_ _%L200866%_ _%L200867%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200866%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200865%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200864%_))
                                           (cons '#f '())))))))
                (_%__kont201602201603%_ (lambda () '(begin))))
            (let ((_%__match201731201732%_
                   (lambda (_%e200653200910%_
                            _%hd200654200913%_
                            _%tl200655200915%_
                            _%e200656200918%_
                            _%hd200657200921%_
                            _%tl200658200923%_
                            _%e200659200926%_
                            _%hd200660200929%_
                            _%tl200661200931%_
                            _%e200662200934%_
                            _%hd200663200937%_
                            _%tl200664200939%_
                            _%e200665200942%_
                            _%hd200666200945%_
                            _%tl200667200947%_
                            _%e200668200950%_
                            _%hd200669200953%_
                            _%tl200670200955%_
                            _%e200671200958%_
                            _%hd200672200961%_
                            _%tl200673200963%_
                            _%e200674200966%_
                            _%hd200675200969%_
                            _%tl200676200971%_
                            _%e200677200974%_
                            _%hd200678200977%_
                            _%tl200679200979%_
                            _%e200680200982%_
                            _%hd200681200985%_
                            _%tl200682200987%_
                            _%e200683200990%_
                            _%hd200684200993%_
                            _%tl200685200995%_
                            _%e200686200998%_
                            _%hd200687201001%_
                            _%tl200688201003%_
                            _%e200689201006%_
                            _%hd200690201009%_
                            _%tl200691201011%_
                            _%e200692201014%_
                            _%hd200693201017%_
                            _%tl200694201019%_
                            _%e200695201022%_
                            _%hd200696201025%_
                            _%tl200697201027%_
                            _%e200698201030%_
                            _%hd200699201033%_
                            _%tl200700201035%_)
                     (let ((_%L201038%_ _%hd200699201033%_)
                           (_%L201039%_ _%hd200690201009%_)
                           (_%L201040%_ _%hd200681200985%_)
                           (_%L201041%_ _%hd200672200961%_)
                           (_%L201042%_ _%hd200663200937%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L201042%_
                              'bind-method!))
                           (_%__kont201598201599%_
                            _%L201038%_
                            _%L201039%_
                            _%L201040%_
                            _%L201041%_
                            _%L201042%_)
                           (_%__kont201602201603%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201596201597%_))
                  (let ((_%e200653200910%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201596201597%_))))
                    (let ((_%tl200655200915%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200653200910%_)))
                          (_%hd200654200913%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200653200910%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200655200915%_))
                          (let ((_%e200656200918%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200655200915%_))))
                            (let ((_%tl200658200923%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200656200918%_)))
                                  (_%hd200657200921%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200656200918%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200657200921%_))
                                  (let ((_%e200659200926%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200657200921%_))))
                                    (let ((_%tl200661200931%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200659200926%_)))
                                          (_%hd200660200929%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200659200926%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200660200929%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200660200929%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200661200931%_))
                                                  (let ((_%e200662200934%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200661200931%_))))
                                                    (let ((_%tl200664200939%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200662200934%_)))
                                                          (_%hd200663200937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200662200934%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200664200939%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200658200923%_))
                      (let ((_%e200665200942%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200658200923%_))))
                        (let ((_%tl200667200947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200665200942%_)))
                              (_%hd200666200945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200665200942%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200666200945%_))
                              (let ((_%e200668200950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200666200945%_))))
                                (let ((_%tl200670200955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200668200950%_)))
                                      (_%hd200669200953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200668200950%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200669200953%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200669200953%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200670200955%_))
                                              (let ((_%e200671200958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200670200955%_))))
                                                (let ((_%tl200673200963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200671200958%_)))
                                                      (_%hd200672200961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200671200958%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200673200963%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200667200947%_))
                                                          (let ((_%e200674200966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200667200947%_))))
                    (let ((_%tl200676200971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200674200966%_)))
                          (_%hd200675200969%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200674200966%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200675200969%_))
                          (let ((_%e200677200974%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200675200969%_))))
                            (let ((_%tl200679200979%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200677200974%_)))
                                  (_%hd200678200977%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200677200974%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200678200977%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd200678200977%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200679200979%_))
                                          (let ((_%e200680200982%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200679200979%_))))
                                            (let ((_%tl200682200987%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200680200982%_)))
                                                  (_%hd200681200985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200680200982%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200682200987%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200676200971%_))
                                                      (let ((_%e200683200990%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200676200971%_))))
                (let ((_%tl200685200995%_
                       (let () (declare (not safe)) (##cdr _%e200683200990%_)))
                      (_%hd200684200993%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200683200990%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200684200993%_))
                      (let ((_%e200686200998%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200684200993%_))))
                        (let ((_%tl200688201003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200686200998%_)))
                              (_%hd200687201001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200686200998%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200687201001%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200687201001%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200688201003%_))
                                      (let ((_%e200689201006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200688201003%_))))
                                        (let ((_%tl200691201011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200689201006%_)))
                                              (_%hd200690201009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200689201006%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200691201011%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200685200995%_))
                                                  (let ((_%e200692201014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200685200995%_))))
                                                    (let ((_%tl200694201019%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200692201014%_)))
                                                          (_%hd200693201017%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200692201014%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200693201017%_))
                                                          (let ((_%e200695201022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200693201017%_))))
                    (let ((_%tl200697201027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200695201022%_)))
                          (_%hd200696201025%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200695201022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200696201025%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd200696201025%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200697201027%_))
                                  (let ((_%e200698201030%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200697201027%_))))
                                    (let ((_%tl200700201035%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200698201030%_)))
                                          (_%hd200699201033%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200698201030%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200700201035%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200694201019%_))
                                              (_%__match201731201732%_
                                               _%e200653200910%_
                                               _%hd200654200913%_
                                               _%tl200655200915%_
                                               _%e200656200918%_
                                               _%hd200657200921%_
                                               _%tl200658200923%_
                                               _%e200659200926%_
                                               _%hd200660200929%_
                                               _%tl200661200931%_
                                               _%e200662200934%_
                                               _%hd200663200937%_
                                               _%tl200664200939%_
                                               _%e200665200942%_
                                               _%hd200666200945%_
                                               _%tl200667200947%_
                                               _%e200668200950%_
                                               _%hd200669200953%_
                                               _%tl200670200955%_
                                               _%e200671200958%_
                                               _%hd200672200961%_
                                               _%tl200673200963%_
                                               _%e200674200966%_
                                               _%hd200675200969%_
                                               _%tl200676200971%_
                                               _%e200677200974%_
                                               _%hd200678200977%_
                                               _%tl200679200979%_
                                               _%e200680200982%_
                                               _%hd200681200985%_
                                               _%tl200682200987%_
                                               _%e200683200990%_
                                               _%hd200684200993%_
                                               _%tl200685200995%_
                                               _%e200686200998%_
                                               _%hd200687201001%_
                                               _%tl200688201003%_
                                               _%e200689201006%_
                                               _%hd200690201009%_
                                               _%tl200691201011%_
                                               _%e200692201014%_
                                               _%hd200693201017%_
                                               _%tl200694201019%_
                                               _%e200695201022%_
                                               _%hd200696201025%_
                                               _%tl200697201027%_
                                               _%e200698201030%_
                                               _%hd200699201033%_
                                               _%tl200700201035%_)
                                              (_%__kont201602201603%_))
                                          (_%__kont201602201603%_))))
                                  (_%__kont201602201603%_))
                              (_%__kont201602201603%_))
                          (_%__kont201602201603%_))))
                  (_%__kont201602201603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200685200995%_))
                                                      (if (let ((__tmp201953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp201953 'bind-method!))
                  (let ((_%L200864%_ _%hd200690201009%_)
                        (_%L200865%_ _%hd200681200985%_)
                        (_%L200866%_ _%hd200672200961%_)
                        (_%L200867%_ _%hd200663200937%_))
                    (_%__kont201600201601%_
                     _%L200864%_
                     _%L200865%_
                     _%L200866%_
                     _%L200867%_))
                  (_%__kont201602201603%_))
              (_%__kont201602201603%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201602201603%_))))
                                      (_%__kont201602201603%_))
                                  (_%__kont201602201603%_))
                              (_%__kont201602201603%_))))
                      (_%__kont201602201603%_))))
              (_%__kont201602201603%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201602201603%_))))
                                          (_%__kont201602201603%_))
                                      (_%__kont201602201603%_))
                                  (_%__kont201602201603%_))))
                          (_%__kont201602201603%_))))
                  (_%__kont201602201603%_))
              (_%__kont201602201603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201602201603%_))
                                          (_%__kont201602201603%_))
                                      (_%__kont201602201603%_))))
                              (_%__kont201602201603%_))))
                      (_%__kont201602201603%_))
                  (_%__kont201602201603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201602201603%_))
                                              (_%__kont201602201603%_))
                                          (_%__kont201602201603%_))))
                                  (_%__kont201602201603%_))))
                          (_%__kont201602201603%_))))
                  (_%__kont201602201603%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self200465%_ _%stx200466%_)
        (let* ((_%__stx201840201841%_ _%stx200466%_)
               (_%g200469200509%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201840201841%_)))))
          (let ((_%__kont201842201843%_
                 (lambda (_%L200615%_ _%L200616%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200616%_))
                               (cons _%L200615%_ '())))))
                (_%__kont201844201845%_
                 (lambda (_%L200538%_ _%L200539%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201840201841%_))
                (let ((_%e200473200559%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx201840201841%_))))
                  (let ((_%tl200475200564%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200473200559%_)))
                        (_%hd200474200562%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200473200559%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200475200564%_))
                        (let ((_%e200476200567%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200475200564%_))))
                          (let ((_%tl200478200572%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200476200567%_)))
                                (_%hd200477200570%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200476200567%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200477200570%_))
                                (let ((_%e200479200575%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200477200570%_))))
                                  (let ((_%tl200481200580%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200479200575%_)))
                                        (_%hd200480200578%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200479200575%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200480200578%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd200480200578%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200481200580%_))
                                                (let ((_%e200482200583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200481200580%_))))
                                                  (let ((_%tl200484200588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200482200583%_)))
                                                        (_%hd200483200586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200482200583%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200484200588%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200478200572%_))
                                                            (let ((_%e200485200591%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200478200572%_))))
                      (let ((_%tl200487200596%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200485200591%_)))
                            (_%hd200486200594%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200485200591%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd200486200594%_))
                            (let ((_%e200488200599%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200486200594%_))))
                              (let ((_%tl200490200604%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200488200599%_)))
                                    (_%hd200489200602%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200488200599%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200489200602%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd200489200602%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200490200604%_))
                                            (let ((_%e200491200607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200490200604%_))))
                                              (let ((_%tl200493200612%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200491200607%_)))
                                                    (_%hd200492200610%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200491200607%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200493200612%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200487200596%_))
                                                        (_%__kont201842201843%_
                                                         _%hd200492200610%_
                                                         _%hd200483200586%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200469200509%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200487200596%_))
                                                        (_%__kont201844201845%_
                                                         _%hd200486200594%_
                                                         _%hd200477200570%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200469200509%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200487200596%_))
                                                (_%__kont201844201845%_
                                                 _%hd200486200594%_
                                                 _%hd200477200570%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200469200509%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200487200596%_))
                                            (_%__kont201844201845%_
                                             _%hd200486200594%_
                                             _%hd200477200570%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200469200509%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200487200596%_))
                                        (_%__kont201844201845%_
                                         _%hd200486200594%_
                                         _%hd200477200570%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200469200509%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200487200596%_))
                                (_%__kont201844201845%_
                                 _%hd200486200594%_
                                 _%hd200477200570%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200469200509%_))))))
                    (let () (declare (not safe)) (_%g200469200509%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200478200572%_))
                    (let ((_%e200502200530%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200478200572%_))))
                      (let ((_%tl200504200535%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200502200530%_)))
                            (_%hd200503200533%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200502200530%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200504200535%_))
                            (_%__kont201844201845%_
                             _%hd200503200533%_
                             _%hd200477200570%_)
                            (let ()
                              (declare (not safe))
                              (_%g200469200509%_)))))
                    (let () (declare (not safe)) (_%g200469200509%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200478200572%_))
                                                    (let ((_%e200502200530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200478200572%_))))
                                                      (let ((_%tl200504200535%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200502200530%_)))
                    (_%hd200503200533%_
                     (let () (declare (not safe)) (##car _%e200502200530%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200504200535%_))
                    (_%__kont201844201845%_
                     _%hd200503200533%_
                     _%hd200477200570%_)
                    (let () (declare (not safe)) (_%g200469200509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200469200509%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200478200572%_))
                                                (let ((_%e200502200530%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200478200572%_))))
                                                  (let ((_%tl200504200535%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200502200530%_)))
                                                        (_%hd200503200533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200502200530%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200504200535%_))
                                                        (_%__kont201844201845%_
                                                         _%hd200503200533%_
                                                         _%hd200477200570%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200469200509%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200469200509%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200478200572%_))
                                            (let ((_%e200502200530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200478200572%_))))
                                              (let ((_%tl200504200535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200502200530%_)))
                                                    (_%hd200503200533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200502200530%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200504200535%_))
                                                    (_%__kont201844201845%_
                                                     _%hd200503200533%_
                                                     _%hd200477200570%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200469200509%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200469200509%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200478200572%_))
                                    (let ((_%e200502200530%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200478200572%_))))
                                      (let ((_%tl200504200535%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200502200530%_)))
                                            (_%hd200503200533%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200502200530%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200504200535%_))
                                            (_%__kont201844201845%_
                                             _%hd200503200533%_
                                             _%hd200477200570%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200469200509%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200469200509%_))))))
                        (let () (declare (not safe)) (_%g200469200509%_)))))
                (let () (declare (not safe)) (_%g200469200509%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self198659200450%_)
        (let* ((_%self200453%_ _%self198659200450%_)
               (_%self200455%_ _%self200453%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200455%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self198660200221%_)
        (let* ((_%self200224%_ _%self198660200221%_)
               (_%self200226%_ _%self200224%_)
               (_%self200235200251%_ _%self200226%_)
               (_%E200237200255%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self200235200251%_
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
               (_%K200238200270%_
                (lambda (_%methods200258%_
                         _%metaclass200259%_
                         _%system?200260%_
                         _%final?200261%_
                         _%struct?200262%_
                         _%constructor200263%_
                         _%fields200264%_
                         _%slots200265%_
                         _%precendence-list200266%_
                         _%super200267%_
                         _%id200268%_)
                  (cons '@class
                        (cons _%id200268%_
                              (cons _%super200267%_
                                    (cons _%precendence-list200266%_
                                          (cons _%slots200265%_
                                                (cons _%fields200264%_
                                                      (cons _%constructor200263%_
                                                            (cons _%struct?200262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?200261%_
                                (cons _%system?200260%_
                                      (cons _%metaclass200259%_
                                            (cons (if _%methods200258%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods200258%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e200239200273%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '1 '#f '#f)))
               (_%id200276%_ _%e200239200273%_)
               (_%e200240200278%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '2 '#f '#f)))
               (_%super200281%_ _%e200240200278%_)
               (_%e200241200283%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '3 '#f '#f)))
               (_%precendence-list200286%_ _%e200241200283%_)
               (_%e200242200288%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '4 '#f '#f)))
               (_%slots200291%_ _%e200242200288%_)
               (_%e200243200293%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '5 '#f '#f)))
               (_%fields200296%_ _%e200243200293%_)
               (_%e200244200298%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '6 '#f '#f)))
               (_%constructor200301%_ _%e200244200298%_)
               (_%e200245200303%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '7 '#f '#f)))
               (_%struct?200306%_ _%e200245200303%_)
               (_%e200246200308%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '8 '#f '#f)))
               (_%final?200311%_ _%e200246200308%_)
               (_%e200247200313%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200235200251%_ '9 '#f '#f)))
               (_%system?200316%_ _%e200247200313%_)
               (_%e200248200318%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200235200251%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass200321%_ _%e200248200318%_)
               (_%e200249200323%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200235200251%_
                   '11
                   '#f
                   '#f)))
               (_%methods200326%_ _%e200249200323%_))
          (_%K200238200270%_
           _%methods200326%_
           _%metaclass200321%_
           _%system?200316%_
           _%final?200311%_
           _%struct?200306%_
           _%constructor200301%_
           _%fields200296%_
           _%slots200291%_
           _%precendence-list200286%_
           _%super200281%_
           _%id200276%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self198661200084%_)
        (let* ((_%self200087%_ _%self198661200084%_)
               (_%self200089%_ _%self200087%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200089%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self198662199947%_)
        (let* ((_%self199950%_ _%self198662199947%_)
               (_%self199952%_ _%self199950%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199952%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self198663199810%_)
        (let* ((_%self199813%_ _%self198663199810%_)
               (_%self199815%_ _%self199813%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199815%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199815%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199815%_
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
      (lambda (_%self198664199673%_)
        (let* ((_%self199676%_ _%self198664199673%_)
               (_%self199678%_ _%self199676%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199678%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199678%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199678%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self198665199536%_)
        (let* ((_%self199539%_ _%self198665199536%_)
               (_%self199541%_ _%self199539%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199541%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199541%_
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
      (lambda (_%self198666199347%_)
        (let* ((_%self199350%_ _%self198666199347%_)
               (_%self199352%_ _%self199350%_)
               (_%self199361199370%_ _%self199352%_)
               (_%E199363199374%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199361199370%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K199364199393%_
                (lambda (_%dispatch199377%_
                         _%arity199378%_
                         _%signature199379%_)
                  (if _%signature199379%_
                      (let ((_%signature199381%_ _%signature199379%_))
                        (cons '@lambda
                              (cons _%arity199378%_
                                    (cons _%dispatch199377%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature199381%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature199381%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature199381%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature199381%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature199381%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity199378%_
                                  (cons _%dispatch199377%_ '()))))))
               (_%e199365199396%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199361199370%_ '1 '#f '#f)))
               (_%e199366199399%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199361199370%_ '2 '#f '#f)))
               (_%signature199402%_ _%e199366199399%_)
               (_%e199367199404%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199361199370%_ '3 '#f '#f)))
               (_%arity199407%_ _%e199367199404%_)
               (_%e199368199409%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199361199370%_ '4 '#f '#f)))
               (_%dispatch199412%_ _%e199368199409%_))
          (_%K199364199393%_
           _%dispatch199412%_
           _%arity199407%_
           _%signature199402%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self198667199206%_)
        (let* ((_%self199209%_ _%self198667199206%_)
               (_%self199211%_ _%self199209%_))
          (letrec ((_%clause-e199221%_
                    (lambda (_%clause199223%_)
                      (cdr (let ((__method201928
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause199223%_
                                     'typedecl))))
                             (if __method201928
                                 (let ()
                                   (declare (not safe))
                                   (__method201928 _%clause199223%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause199223%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e199221%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self199211%_
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
      (lambda (_%self198668199069%_)
        (let* ((_%self199072%_ _%self198668199069%_)
               (_%self199074%_ _%self199072%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199074%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199074%_
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
      (lambda (_%self198669198932%_)
        (let* ((_%self198935%_ _%self198669198932%_)
               (_%self198937%_ _%self198935%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198937%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198937%_
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
      (lambda (_%self198670198795%_)
        (let* ((_%self198798%_ _%self198670198795%_)
               (_%self198800%_ _%self198798%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198800%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
