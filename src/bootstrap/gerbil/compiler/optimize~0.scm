(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712093482)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193030
                   (let ((__obj193024
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193024)
                     __obj193024)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193030)))))
    (define gxc#optimize!
      (lambda (_%ctx192633%_)
        (let ((__tmp193033
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx192633%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx192633%_))
                 (let ((__tmp193035
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193034
                        (##structure-ref
                         _%ctx192633%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193035 __tmp193034 '#t))
                 (let ((_%code192636%_
                        (let ((__tmp193036
                               (##structure-ref
                                _%ctx192633%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp193036))))
                   (##structure-set!
                    _%ctx192633%_
                    _%code192636%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193032 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193031 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193033
           gxc#current-compile-mutators
           __tmp193032
           gxc#current-compile-local-type
           __tmp193031))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx192619%_)
        (letrec ((_%load-it!192621%_
                  (lambda (_%id192631%_)
                    (if (let ((__tmp193037
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193037 _%id192631%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id192631%_))
                          (let ((__tmp193038
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193038 _%id192631%_ '#t)))))))
          (let* ((_%modid192623%_
                  (##structure-ref
                   _%ctx192619%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str192625%_ (symbol->string _%modid192623%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str192625%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str192625%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192621%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192621%_
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
      (lambda (_%ctx192556%_)
        (letrec* ((_%deps192558%_
                   (let* ((_%imports192609%_
                           (##structure-ref
                            _%ctx192556%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e192611%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx192556%_))))
                     (if _%$e192611%_
                         ((lambda (_%g192613192615%_)
                            (cons _%g192613192615%_ _%imports192609%_))
                          _%$e192611%_)
                         (let () _%imports192609%_)))))
          (let _%lp192560%_ ((_%rest192562%_ _%deps192558%_))
            (let* ((_%rest192563192571%_ _%rest192562%_)
                   (_%else192565192579%_ (lambda () '#!void))
                   (_%K192567192597%_
                    (lambda (_%rest192582%_ _%hd192583%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd192583%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193040
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193039
                                       (##structure-ref
                                        _%hd192583%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193040 __tmp193039))
                                '#!void
                                (begin
                                  (let ((_%$e192586%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd192583%_))))
                                    (if _%$e192586%_
                                        ((lambda (_%pre192589%_)
                                           (let ((__tmp193041
                                                  (cons _%pre192589%_
                                                        (##structure-ref
                                                         _%hd192583%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp192560%_ __tmp193041)))
                                         _%$e192586%_)
                                        (let ()
                                          (let ((__tmp193042
                                                 (##structure-ref
                                                  _%hd192583%_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (_%lp192560%_ __tmp193042)))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd192583%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp192560%_ _%rest192582%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd192583%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193044
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193043
                                           (##structure-ref
                                            _%hd192583%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193044 __tmp193043))
                                    '#!void
                                    (begin
                                      (let ((__tmp193045
                                             (##structure-ref
                                              _%hd192583%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp192560%_ __tmp193045))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd192583%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp192560%_ _%rest192582%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd192583%_
                                     'gx#module-import::t))
                                  (let ()
                                    (let ((__tmp193046
                                           (cons (##direct-structure-ref
                                                  _%hd192583%_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _%rest192582%_)))
                                      (declare (not safe))
                                      (_%lp192560%_ __tmp193046)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd192583%_
                                         'gx#module-export::t))
                                      (let ()
                                        (let ((__tmp193047
                                               (cons (##direct-structure-ref
                                                      _%hd192583%_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _%rest192582%_)))
                                          (declare (not safe))
                                          (_%lp192560%_ __tmp193047)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd192583%_
                                             'gx#import-set::t))
                                          (let ()
                                            (let ((__tmp193048
                                                   (cons (##direct-structure-ref
                                                          _%hd192583%_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _%rest192582%_)))
                                              (declare (not safe))
                                              (_%lp192560%_ __tmp193048)))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"Unexpected module import"
                                                     _%hd192583%_)))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest192563192571%_))
                  (let ((_%hd192568192600%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest192563192571%_)))
                        (_%tl192569192602%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest192563192571%_))))
                    (let* ((_%hd192605%_ _%hd192568192600%_)
                           (_%rest192607%_ _%tl192569192602%_))
                      (declare (not safe))
                      (_%K192567192597%_ _%rest192607%_ _%hd192605%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192536%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192536%_
                    'gx#module-context::t))
                 (let ((__tmp193049
                        (##structure-ref
                         _%ctx192536%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp193049)))
            '#!void
            (let* ((_%ht192538%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192540%_
                    (##structure-ref
                     _%ctx192536%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192542%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192538%_ _%id192540%_))))
              (let ((_%$e192545%_ _%mod192542%_))
                (if _%$e192545%_
                    _%$e192545%_
                    (let* ((_%mod192548%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _%ctx192536%_)))
                           (_%val192553%_
                            (let ((_%$e192550%_ _%mod192548%_))
                              (if _%$e192550%_ _%$e192550%_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _%ht192538%_ _%id192540%_ _%val192553%_))
                      _%val192553%_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192534%_)
        (if (##structure-ref _%ctx192534%_ '1 gx#expander-context::t '#f)
            (let ((__tmp193050
                   (##structure-ref
                    _%ctx192534%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp193050))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192511%_)
        (letrec ((_%catch-e192513%_
                  (lambda (_%exn192532%_)
                    (display-exception _%exn192532%_)
                    (let ()
                      (declare (not safe))
                      (displayln
                       '"*** WARNING Failed to load ssxi module for "
                       _%id192511%_))
                    '#f))
                 (_%import-e192514%_
                  (lambda ()
                    (let* ((_%str-id192517%_
                            (let ((__tmp193051
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192511%_))))
                              (declare (not safe))
                              (##string-append __tmp193051 '".ssxi")))
                           (_%artefact-path192525%_
                            (let ((_%odir192518192520%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192518192520%_
                                  (let ((_%odir192523%_ _%odir192518192520%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192517%_
                                        '".ss"))
                                     _%odir192523%_))
                                  '#f)))
                           (_%library-path192527%_
                            (let ((__tmp193052
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192517%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193052)))
                           (_%ssxi-path192529%_
                            (if (and _%artefact-path192525%_
                                     (file-exists? _%artefact-path192525%_))
                                _%artefact-path192525%_
                                _%library-path192527%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192529%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192529%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192513%_ _%import-e192514%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192502%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192502%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192502%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192502%_))
        (let* ((_%stx192504%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192502%_)))
               (_%stx192506%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192504%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192506%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192506%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192506%_))
          (let ((_%stx192509%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192506%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192509%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193054 (list gxc#::generate-runtime-empty::t))
            (__tmp193053 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193054
         '()
         __tmp193053
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192499%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192499%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193055
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
        (__make-promise __tmp193055)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192491%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192494%_
                (let ((__obj193026
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193026))
               (__tmp193056
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192494%_ _%stx192491%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193056
           gxc#current-compile-method
           _%self192494%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192451%_ _%stx192452%_)
        (let* ((_%g192454192464%_
                (lambda (_%g192455192461%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192455192461%_))))
               (_%g192453192488%_
                (lambda (_%g192455192467%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192455192467%_))
                      (let ((_%e192459192469%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192455192467%_))))
                        (let ((_%hd192458192472%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192459192469%_)))
                              (_%tl192457192474%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192459192469%_))))
                          ((lambda (_%L192477%_)
                             (let ((__tmp193059
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192451%_
                                         _%stx192452%_))))
                                   (__tmp193057
                                    (let ((__tmp193058
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193058 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193059
                                gx#current-expander-phi
                                __tmp193057)))
                           _%tl192457192474%_)))
                      (let ()
                        (declare (not safe))
                        (_%g192454192464%_ _%g192455192467%_))))))
          (declare (not safe))
          (_%g192453192488%_ _%stx192452%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192390%_ _%stx192391%_)
        (let* ((_%g192393192407%_
                (lambda (_%g192394192404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192394192404%_))))
               (_%g192392192448%_
                (lambda (_%g192394192410%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192394192410%_))
                      (let ((_%e192399192412%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192394192410%_))))
                        (let ((_%hd192398192415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192399192412%_)))
                              (_%tl192397192417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192399192412%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192397192417%_))
                              (let ((_%e192402192420%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192397192417%_))))
                                (let ((_%hd192401192423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192402192420%_)))
                                      (_%tl192400192425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192402192420%_))))
                                  ((lambda (_%L192428%_ _%L192429%_)
                                     (let* ((_%ctx192442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192429%_)))
                                            (_%code192444%_
                                             (##structure-ref
                                              _%ctx192442%_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp193060
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self192390%_
                                                   _%code192444%_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp193060
                                          gx#current-expander-context
                                          _%ctx192442%_))))
                                   _%tl192400192425%_
                                   _%hd192401192423%_)))
                              (let ()
                                (declare (not safe))
                                (_%g192393192407%_ _%g192394192410%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g192393192407%_ _%g192394192410%_))))))
          (declare (not safe))
          (_%g192392192448%_ _%stx192391%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192195%_ _%stx192196%_)
        (letrec ((_%generate-e192198%_
                  (lambda (_%id192375%_)
                    (let* ((_%sym192377%_
                            (if (let ((__tmp193061
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193061))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192375%_))
                                '#f))
                           (_%$e192379%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192377%_))))
                      (if _%$e192379%_
                          ((lambda (_%klass192382%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192377%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192377%_
                                                     (cons (let ((__method193027
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192382%_ 'typedecl))))
                     (if __method193027
                         (__method193027 _%klass192382%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192382%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192377%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192377%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192379%_)
                          (let ((_%$e192384%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192377%_))))
                            (if _%$e192384%_
                                ((lambda (_%type192387%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192377%_
                                      '" "
                                      _%type192387%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192387%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192377%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192377%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192387%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192377%_
                                                   (cons (let ((__method193028
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192387%_ 'typedecl))))
                   (if __method193028
                       (__method193028 _%type192387%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192387%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192384%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx192639192640%_ _%stx192196%_)
                 (_%g192201192239%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx192639192640%_)))))
            (let ((_%__kont192641192642%_
                   (lambda (_%L192357%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e192198%_ _%L192357%_))))
                  (_%__kont192643192644%_
                   (lambda (_%L192292%_)
                     (let ((_%types192318%_
                            (map _%generate-e192198%_
                                 (let ((__tmp193062
                                        (lambda (_%g192310192313%_
                                                 _%g192311192315%_)
                                          (cons _%g192310192313%_
                                                _%g192311192315%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193062 '() _%L192292%_)))))
                       (cons 'begin _%types192318%_)))))
              (let ((_%__match192694192695%_
                     (lambda (_%e192219192244%_
                              _%hd192218192247%_
                              _%tl192217192249%_
                              _%e192222192252%_
                              _%hd192221192255%_
                              _%tl192220192257%_
                              _%__splice192645192646%_
                              _%target192223192260%_
                              _%tl192225192262%_)
                       (letrec ((_%loop192226192265%_
                                 (lambda (_%hd192224192268%_
                                          _%id192230192270%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192224192268%_))
                                       (let ((_%e192227192273%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192224192268%_))))
                                         (let ((_%lp-tl192229192278%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192227192273%_)))
                                               (_%lp-hd192228192276%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192227192273%_))))
                                           (let ((__tmp193063
                                                  (cons _%lp-hd192228192276%_
                                                        _%id192230192270%_)))
                                             (declare (not safe))
                                             (_%loop192226192265%_
                                              _%lp-tl192229192278%_
                                              __tmp193063))))
                                       (let ((_%id192231192281%_
                                              (reverse _%id192230192270%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192220192257%_))
                                             (let ((_%e192234192284%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192220192257%_))))
                                               (let ((_%tl192232192289%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192234192284%_)))
                                                     (_%hd192233192287%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192234192284%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192232192289%_))
                                                     (_%__kont192643192644%_
                                                      _%id192231192281%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192201192239%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192201192239%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop192226192265%_
                            _%target192223192260%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx192639192640%_))
                    (let ((_%e192206192325%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx192639192640%_))))
                      (let ((_%tl192204192330%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192206192325%_)))
                            (_%hd192205192328%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192206192325%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192204192330%_))
                            (let ((_%e192209192333%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192204192330%_))))
                              (let ((_%tl192207192338%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192209192333%_)))
                                    (_%hd192208192336%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192209192333%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192208192336%_))
                                    (let ((_%e192212192341%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192208192336%_))))
                                      (let ((_%tl192210192346%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192212192341%_)))
                                            (_%hd192211192344%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192212192341%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192210192346%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192207192338%_))
                                                (let ((_%e192215192349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192207192338%_))))
                                                  (let ((_%tl192213192354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192215192349%_)))
                                                        (_%hd192214192352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192215192349%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192213192354%_))
                                                        (_%__kont192641192642%_
                                                         _%hd192211192344%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192208192336%_))
                                                            (let ((_%__splice192645192646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192208192336%_ '0))))
                      (let ((_%tl192225192262%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192645192646%_ '1)))
                            (_%target192223192260%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192645192646%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192225192262%_))
                            (_%__match192694192695%_
                             _%e192206192325%_
                             _%hd192205192328%_
                             _%tl192204192330%_
                             _%e192209192333%_
                             _%hd192208192336%_
                             _%tl192207192338%_
                             _%__splice192645192646%_
                             _%target192223192260%_
                             _%tl192225192262%_)
                            (let ()
                              (declare (not safe))
                              (_%g192201192239%_)))))
                    (let () (declare (not safe)) (_%g192201192239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192208192336%_))
                                                    (let ((_%__splice192645192646%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192208192336%_
                                                              '0))))
                                                      (let ((_%tl192225192262%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice192645192646%_ '1)))
                    (_%target192223192260%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice192645192646%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192225192262%_))
                    (_%__match192694192695%_
                     _%e192206192325%_
                     _%hd192205192328%_
                     _%tl192204192330%_
                     _%e192209192333%_
                     _%hd192208192336%_
                     _%tl192207192338%_
                     _%__splice192645192646%_
                     _%target192223192260%_
                     _%tl192225192262%_)
                    (let () (declare (not safe)) (_%g192201192239%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192201192239%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192208192336%_))
                                                (let ((_%__splice192645192646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192208192336%_
                                                          '0))))
                                                  (let ((_%tl192225192262%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192645192646%_
                                                            '1)))
                                                        (_%target192223192260%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192645192646%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192225192262%_))
                                                        (_%__match192694192695%_
                                                         _%e192206192325%_
                                                         _%hd192205192328%_
                                                         _%tl192204192330%_
                                                         _%e192209192333%_
                                                         _%hd192208192336%_
                                                         _%tl192207192338%_
                                                         _%__splice192645192646%_
                                                         _%target192223192260%_
                                                         _%tl192225192262%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192201192239%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192201192239%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192208192336%_))
                                        (let ((_%__splice192645192646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192208192336%_
                                                  '0))))
                                          (let ((_%tl192225192262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192645192646%_
                                                    '1)))
                                                (_%target192223192260%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192645192646%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192225192262%_))
                                                (_%__match192694192695%_
                                                 _%e192206192325%_
                                                 _%hd192205192328%_
                                                 _%tl192204192330%_
                                                 _%e192209192333%_
                                                 _%hd192208192336%_
                                                 _%tl192207192338%_
                                                 _%__splice192645192646%_
                                                 _%target192223192260%_
                                                 _%tl192225192262%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192201192239%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192201192239%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192201192239%_)))))
                    (let () (declare (not safe)) (_%g192201192239%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self191748%_ _%stx191749%_)
        (let* ((_%__stx192697192698%_ _%stx191749%_)
               (_%g191753191855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192697192698%_)))))
          (let ((_%__kont192699192700%_
                 (lambda (_%L192145%_
                          _%L192146%_
                          _%L192147%_
                          _%L192148%_
                          _%L192149%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192148%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192147%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192146%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192145%_))
                                                 '())))))))
                (_%__kont192701192702%_
                 (lambda (_%L191971%_ _%L191972%_ _%L191973%_ _%L191974%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191973%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L191972%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L191971%_))
                                           (cons '#f '())))))))
                (_%__kont192703192704%_ (lambda () '(begin))))
            (let ((_%__match192832192833%_
                   (lambda (_%e191762192017%_
                            _%hd191761192020%_
                            _%tl191760192022%_
                            _%e191765192025%_
                            _%hd191764192028%_
                            _%tl191763192030%_
                            _%e191768192033%_
                            _%hd191767192036%_
                            _%tl191766192038%_
                            _%e191771192041%_
                            _%hd191770192044%_
                            _%tl191769192046%_
                            _%e191774192049%_
                            _%hd191773192052%_
                            _%tl191772192054%_
                            _%e191777192057%_
                            _%hd191776192060%_
                            _%tl191775192062%_
                            _%e191780192065%_
                            _%hd191779192068%_
                            _%tl191778192070%_
                            _%e191783192073%_
                            _%hd191782192076%_
                            _%tl191781192078%_
                            _%e191786192081%_
                            _%hd191785192084%_
                            _%tl191784192086%_
                            _%e191789192089%_
                            _%hd191788192092%_
                            _%tl191787192094%_
                            _%e191792192097%_
                            _%hd191791192100%_
                            _%tl191790192102%_
                            _%e191795192105%_
                            _%hd191794192108%_
                            _%tl191793192110%_
                            _%e191798192113%_
                            _%hd191797192116%_
                            _%tl191796192118%_
                            _%e191801192121%_
                            _%hd191800192124%_
                            _%tl191799192126%_
                            _%e191804192129%_
                            _%hd191803192132%_
                            _%tl191802192134%_
                            _%e191807192137%_
                            _%hd191806192140%_
                            _%tl191805192142%_)
                     (let ((_%L192145%_ _%hd191806192140%_)
                           (_%L192146%_ _%hd191797192116%_)
                           (_%L192147%_ _%hd191788192092%_)
                           (_%L192148%_ _%hd191779192068%_)
                           (_%L192149%_ _%hd191770192044%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192149%_
                              'bind-method!))
                           (_%__kont192699192700%_
                            _%L192145%_
                            _%L192146%_
                            _%L192147%_
                            _%L192148%_
                            _%L192149%_)
                           (_%__kont192703192704%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx192697192698%_))
                  (let ((_%e191762192017%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx192697192698%_))))
                    (let ((_%tl191760192022%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191762192017%_)))
                          (_%hd191761192020%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191762192017%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191760192022%_))
                          (let ((_%e191765192025%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191760192022%_))))
                            (let ((_%tl191763192030%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191765192025%_)))
                                  (_%hd191764192028%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191765192025%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191764192028%_))
                                  (let ((_%e191768192033%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191764192028%_))))
                                    (let ((_%tl191766192038%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191768192033%_)))
                                          (_%hd191767192036%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191768192033%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191767192036%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191767192036%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191766192038%_))
                                                  (let ((_%e191771192041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191766192038%_))))
                                                    (let ((_%tl191769192046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191771192041%_)))
                                                          (_%hd191770192044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191771192041%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191769192046%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191763192030%_))
                      (let ((_%e191774192049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191763192030%_))))
                        (let ((_%tl191772192054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191774192049%_)))
                              (_%hd191773192052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191774192049%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd191773192052%_))
                              (let ((_%e191777192057%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd191773192052%_))))
                                (let ((_%tl191775192062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191777192057%_)))
                                      (_%hd191776192060%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191777192057%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd191776192060%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd191776192060%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191775192062%_))
                                              (let ((_%e191780192065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191775192062%_))))
                                                (let ((_%tl191778192070%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191780192065%_)))
                                                      (_%hd191779192068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191780192065%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191778192070%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191772192054%_))
                                                          (let ((_%e191783192073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191772192054%_))))
                    (let ((_%tl191781192078%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191783192073%_)))
                          (_%hd191782192076%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191783192073%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd191782192076%_))
                          (let ((_%e191786192081%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd191782192076%_))))
                            (let ((_%tl191784192086%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191786192081%_)))
                                  (_%hd191785192084%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191786192081%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd191785192084%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd191785192084%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191784192086%_))
                                          (let ((_%e191789192089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191784192086%_))))
                                            (let ((_%tl191787192094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191789192089%_)))
                                                  (_%hd191788192092%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191789192089%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191787192094%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191781192078%_))
                                                      (let ((_%e191792192097%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191781192078%_))))
                (let ((_%tl191790192102%_
                       (let () (declare (not safe)) (##cdr _%e191792192097%_)))
                      (_%hd191791192100%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191792192097%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd191791192100%_))
                      (let ((_%e191795192105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd191791192100%_))))
                        (let ((_%tl191793192110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191795192105%_)))
                              (_%hd191794192108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191795192105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd191794192108%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd191794192108%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191793192110%_))
                                      (let ((_%e191798192113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191793192110%_))))
                                        (let ((_%tl191796192118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191798192113%_)))
                                              (_%hd191797192116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191798192113%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191796192118%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191790192102%_))
                                                  (let ((_%e191801192121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191790192102%_))))
                                                    (let ((_%tl191799192126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191801192121%_)))
                                                          (_%hd191800192124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191801192121%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191800192124%_))
                                                          (let ((_%e191804192129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191800192124%_))))
                    (let ((_%tl191802192134%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191804192129%_)))
                          (_%hd191803192132%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191804192129%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd191803192132%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd191803192132%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191802192134%_))
                                  (let ((_%e191807192137%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191802192134%_))))
                                    (let ((_%tl191805192142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191807192137%_)))
                                          (_%hd191806192140%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191807192137%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191805192142%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191799192126%_))
                                              (_%__match192832192833%_
                                               _%e191762192017%_
                                               _%hd191761192020%_
                                               _%tl191760192022%_
                                               _%e191765192025%_
                                               _%hd191764192028%_
                                               _%tl191763192030%_
                                               _%e191768192033%_
                                               _%hd191767192036%_
                                               _%tl191766192038%_
                                               _%e191771192041%_
                                               _%hd191770192044%_
                                               _%tl191769192046%_
                                               _%e191774192049%_
                                               _%hd191773192052%_
                                               _%tl191772192054%_
                                               _%e191777192057%_
                                               _%hd191776192060%_
                                               _%tl191775192062%_
                                               _%e191780192065%_
                                               _%hd191779192068%_
                                               _%tl191778192070%_
                                               _%e191783192073%_
                                               _%hd191782192076%_
                                               _%tl191781192078%_
                                               _%e191786192081%_
                                               _%hd191785192084%_
                                               _%tl191784192086%_
                                               _%e191789192089%_
                                               _%hd191788192092%_
                                               _%tl191787192094%_
                                               _%e191792192097%_
                                               _%hd191791192100%_
                                               _%tl191790192102%_
                                               _%e191795192105%_
                                               _%hd191794192108%_
                                               _%tl191793192110%_
                                               _%e191798192113%_
                                               _%hd191797192116%_
                                               _%tl191796192118%_
                                               _%e191801192121%_
                                               _%hd191800192124%_
                                               _%tl191799192126%_
                                               _%e191804192129%_
                                               _%hd191803192132%_
                                               _%tl191802192134%_
                                               _%e191807192137%_
                                               _%hd191806192140%_
                                               _%tl191805192142%_)
                                              (_%__kont192703192704%_))
                                          (_%__kont192703192704%_))))
                                  (_%__kont192703192704%_))
                              (_%__kont192703192704%_))
                          (_%__kont192703192704%_))))
                  (_%__kont192703192704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191790192102%_))
                                                      (if (let ((__tmp193064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193064 'bind-method!))
                  (let ((_%L191971%_ _%hd191797192116%_)
                        (_%L191972%_ _%hd191788192092%_)
                        (_%L191973%_ _%hd191779192068%_)
                        (_%L191974%_ _%hd191770192044%_))
                    (_%__kont192701192702%_
                     _%L191971%_
                     _%L191972%_
                     _%L191973%_
                     _%L191974%_))
                  (_%__kont192703192704%_))
              (_%__kont192703192704%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192703192704%_))))
                                      (_%__kont192703192704%_))
                                  (_%__kont192703192704%_))
                              (_%__kont192703192704%_))))
                      (_%__kont192703192704%_))))
              (_%__kont192703192704%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192703192704%_))))
                                          (_%__kont192703192704%_))
                                      (_%__kont192703192704%_))
                                  (_%__kont192703192704%_))))
                          (_%__kont192703192704%_))))
                  (_%__kont192703192704%_))
              (_%__kont192703192704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192703192704%_))
                                          (_%__kont192703192704%_))
                                      (_%__kont192703192704%_))))
                              (_%__kont192703192704%_))))
                      (_%__kont192703192704%_))
                  (_%__kont192703192704%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192703192704%_))
                                              (_%__kont192703192704%_))
                                          (_%__kont192703192704%_))))
                                  (_%__kont192703192704%_))))
                          (_%__kont192703192704%_))))
                  (_%__kont192703192704%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self191572%_ _%stx191573%_)
        (let* ((_%__stx192941192942%_ _%stx191573%_)
               (_%g191576191616%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192941192942%_)))))
          (let ((_%__kont192943192944%_
                 (lambda (_%L191722%_ _%L191723%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191723%_))
                               (cons _%L191722%_ '())))))
                (_%__kont192945192946%_
                 (lambda (_%L191645%_ _%L191646%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx192941192942%_))
                (let ((_%e191582191666%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx192941192942%_))))
                  (let ((_%tl191580191671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191582191666%_)))
                        (_%hd191581191669%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191582191666%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl191580191671%_))
                        (let ((_%e191585191674%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191580191671%_))))
                          (let ((_%tl191583191679%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191585191674%_)))
                                (_%hd191584191677%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191585191674%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd191584191677%_))
                                (let ((_%e191588191682%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd191584191677%_))))
                                  (let ((_%tl191586191687%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191588191682%_)))
                                        (_%hd191587191685%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191588191682%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd191587191685%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd191587191685%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191586191687%_))
                                                (let ((_%e191591191690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191586191687%_))))
                                                  (let ((_%tl191589191695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191591191690%_)))
                                                        (_%hd191590191693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191591191690%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191589191695%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191583191679%_))
                                                            (let ((_%e191594191698%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191583191679%_))))
                      (let ((_%tl191592191703%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191594191698%_)))
                            (_%hd191593191701%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191594191698%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191593191701%_))
                            (let ((_%e191597191706%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191593191701%_))))
                              (let ((_%tl191595191711%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191597191706%_)))
                                    (_%hd191596191709%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191597191706%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191596191709%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191596191709%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191595191711%_))
                                            (let ((_%e191600191714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191595191711%_))))
                                              (let ((_%tl191598191719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191600191714%_)))
                                                    (_%hd191599191717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191600191714%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191598191719%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191592191703%_))
                                                        (_%__kont192943192944%_
                                                         _%hd191599191717%_
                                                         _%hd191590191693%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191576191616%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191592191703%_))
                                                        (_%__kont192945192946%_
                                                         _%hd191593191701%_
                                                         _%hd191584191677%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191576191616%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191592191703%_))
                                                (_%__kont192945192946%_
                                                 _%hd191593191701%_
                                                 _%hd191584191677%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191576191616%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191592191703%_))
                                            (_%__kont192945192946%_
                                             _%hd191593191701%_
                                             _%hd191584191677%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191576191616%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191592191703%_))
                                        (_%__kont192945192946%_
                                         _%hd191593191701%_
                                         _%hd191584191677%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g191576191616%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191592191703%_))
                                (_%__kont192945192946%_
                                 _%hd191593191701%_
                                 _%hd191584191677%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g191576191616%_))))))
                    (let () (declare (not safe)) (_%g191576191616%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl191583191679%_))
                    (let ((_%e191611191637%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191583191679%_))))
                      (let ((_%tl191609191642%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191611191637%_)))
                            (_%hd191610191640%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191611191637%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl191609191642%_))
                            (_%__kont192945192946%_
                             _%hd191610191640%_
                             _%hd191584191677%_)
                            (let ()
                              (declare (not safe))
                              (_%g191576191616%_)))))
                    (let () (declare (not safe)) (_%g191576191616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl191583191679%_))
                                                    (let ((_%e191611191637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl191583191679%_))))
                                                      (let ((_%tl191609191642%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e191611191637%_)))
                    (_%hd191610191640%_
                     (let () (declare (not safe)) (##car _%e191611191637%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl191609191642%_))
                    (_%__kont192945192946%_
                     _%hd191610191640%_
                     _%hd191584191677%_)
                    (let () (declare (not safe)) (_%g191576191616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191576191616%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191583191679%_))
                                                (let ((_%e191611191637%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191583191679%_))))
                                                  (let ((_%tl191609191642%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191611191637%_)))
                                                        (_%hd191610191640%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191611191637%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191609191642%_))
                                                        (_%__kont192945192946%_
                                                         _%hd191610191640%_
                                                         _%hd191584191677%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191576191616%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191576191616%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191583191679%_))
                                            (let ((_%e191611191637%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191583191679%_))))
                                              (let ((_%tl191609191642%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191611191637%_)))
                                                    (_%hd191610191640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191611191637%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191609191642%_))
                                                    (_%__kont192945192946%_
                                                     _%hd191610191640%_
                                                     _%hd191584191677%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191576191616%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g191576191616%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191583191679%_))
                                    (let ((_%e191611191637%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191583191679%_))))
                                      (let ((_%tl191609191642%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191611191637%_)))
                                            (_%hd191610191640%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191611191637%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191609191642%_))
                                            (_%__kont192945192946%_
                                             _%hd191610191640%_
                                             _%hd191584191677%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191576191616%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191576191616%_))))))
                        (let () (declare (not safe)) (_%g191576191616%_)))))
                (let () (declare (not safe)) (_%g191576191616%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191559%_)
        (let ()
          (let ((_%self191562%_ _%self191559%_))
            (let ()
              (cons '@alias
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191562%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191332%_)
        (let ()
          (let ((_%self191335%_ _%self191332%_))
            (let ()
              (let* ((_%self191344191360%_ _%self191335%_)
                     (_%E191346191364%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self191344191360%_
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
                     (_%K191347191379%_
                      (lambda (_%methods191367%_
                               _%metaclass191368%_
                               _%system?191369%_
                               _%final?191370%_
                               _%struct?191371%_
                               _%constructor191372%_
                               _%fields191373%_
                               _%slots191374%_
                               _%precendence-list191375%_
                               _%super191376%_
                               _%id191377%_)
                        (cons '@class
                              (cons _%id191377%_
                                    (cons _%super191376%_
                                          (cons _%precendence-list191375%_
                                                (cons _%slots191374%_
                                                      (cons _%fields191373%_
                                                            (cons _%constructor191372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%struct?191371%_
                                (cons _%final?191370%_
                                      (cons _%system?191369%_
                                            (cons _%metaclass191368%_
                                                  (cons (if _%methods191367%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (hash->list
                                                               _%methods191367%_))
                                                            '#f)
                                                        '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (if '#t
                    (let* ((_%e191348191382%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '1
                               '#f
                               '#f)))
                           (_%id191385%_ _%e191348191382%_)
                           (_%e191349191387%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '2
                               '#f
                               '#f)))
                           (_%super191390%_ _%e191349191387%_)
                           (_%e191350191392%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '3
                               '#f
                               '#f)))
                           (_%precendence-list191395%_ _%e191350191392%_)
                           (_%e191351191397%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '4
                               '#f
                               '#f)))
                           (_%slots191400%_ _%e191351191397%_)
                           (_%e191352191402%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '5
                               '#f
                               '#f)))
                           (_%fields191405%_ _%e191352191402%_)
                           (_%e191353191407%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '6
                               '#f
                               '#f)))
                           (_%constructor191410%_ _%e191353191407%_)
                           (_%e191354191412%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '7
                               '#f
                               '#f)))
                           (_%struct?191415%_ _%e191354191412%_)
                           (_%e191355191417%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '8
                               '#f
                               '#f)))
                           (_%final?191420%_ _%e191355191417%_)
                           (_%e191356191422%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '9
                               '#f
                               '#f)))
                           (_%system?191425%_ _%e191356191422%_)
                           (_%e191357191427%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '10
                               '#f
                               '#f)))
                           (_%metaclass191430%_ _%e191357191427%_)
                           (_%e191358191432%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191344191360%_
                               '11
                               '#f
                               '#f)))
                           (_%methods191435%_ _%e191358191432%_))
                      (declare (not safe))
                      (_%K191347191379%_
                       _%methods191435%_
                       _%metaclass191430%_
                       _%system?191425%_
                       _%final?191420%_
                       _%struct?191415%_
                       _%constructor191410%_
                       _%fields191405%_
                       _%slots191400%_
                       _%precendence-list191395%_
                       _%super191390%_
                       _%id191385%_))
                    (let () (declare (not safe)) (_%E191346191364%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191197%_)
        (let ()
          (let ((_%self191200%_ _%self191197%_))
            (let ()
              (cons '@predicate
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191200%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191062%_)
        (let ()
          (let ((_%self191065%_ _%self191062%_))
            (let ()
              (cons '@constructor
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191065%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self190927%_)
        (let ()
          (let ((_%self190930%_ _%self190927%_))
            (let ()
              (cons '@accessor
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190930%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190930%_
                                   '3
                                   '#f
                                   '#f))
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self190930%_
                                         '4
                                         '#f
                                         '#f))
                                      '())))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self190792%_)
        (let ()
          (let ((_%self190795%_ _%self190792%_))
            (let ()
              (cons '@mutator
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190795%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190795%_
                                   '3
                                   '#f
                                   '#f))
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self190795%_
                                         '4
                                         '#f
                                         '#f))
                                      '())))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self190657%_)
        (let ()
          (let ((_%self190660%_ _%self190657%_))
            (let ()
              (cons '@interface
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190660%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190660%_
                                   '2
                                   '#f
                                   '#f))
                                '()))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self190470%_)
        (let ()
          (let ((_%self190473%_ _%self190470%_))
            (let ()
              (let* ((_%self190482190491%_ _%self190473%_)
                     (_%E190484190495%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self190482190491%_
                                 '((!lambda _ signature arity dispatch))))
                        '#!void))
                     (_%K190485190514%_
                      (lambda (_%dispatch190498%_
                               _%arity190499%_
                               _%signature190500%_)
                        (if _%signature190500%_
                            (let ((_%signature190502%_ _%signature190500%_))
                              (cons '@lambda
                                    (cons _%arity190499%_
                                          (cons _%dispatch190498%_
                                                (cons 'signature:
                                                      (cons (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%signature190502%_
                                   '1
                                   '#f
                                   '#f))
                                (cons 'effect:
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%signature190502%_
                                               '2
                                               '#f
                                               '#f))
                                            (cons 'arguments:
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%signature190502%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (cons 'unchecked:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature190502%_
                               '4
                               '#f
                               '#f))
                            '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (cons '@lambda
                                  (cons _%arity190499%_
                                        (cons _%dispatch190498%_ '())))))))
                (if '#t
                    (let* ((_%e190486190517%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190482190491%_
                               '1
                               '#f
                               '#f)))
                           (_%e190487190520%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190482190491%_
                               '2
                               '#f
                               '#f)))
                           (_%signature190523%_ _%e190487190520%_)
                           (_%e190488190525%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190482190491%_
                               '3
                               '#f
                               '#f)))
                           (_%arity190528%_ _%e190488190525%_)
                           (_%e190489190530%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190482190491%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch190533%_ _%e190489190530%_))
                      (declare (not safe))
                      (_%K190485190514%_
                       _%dispatch190533%_
                       _%arity190528%_
                       _%signature190523%_))
                    (let () (declare (not safe)) (_%E190484190495%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190331%_)
        (let ()
          (let ((_%self190334%_ _%self190331%_))
            (let ()
              (letrec ((_%clause-e190344%_
                        (lambda (_%clause190346%_)
                          (cdr (let ((__method193029
                                      (let ()
                                        (declare (not safe))
                                        (__method-ref
                                         _%clause190346%_
                                         'typedecl))))
                                 (if __method193029
                                     (__method193029 _%clause190346%_)
                                     (let ()
                                       (declare (not safe))
                                       (error '"Missing method"
                                              _%clause190346%_
                                              'typedecl))))))))
                (cons '@case-lambda
                      (map _%clause-e190344%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self190334%_
                              '3
                              '#f
                              '#f))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self190196%_)
        (let ()
          (let ((_%self190199%_ _%self190196%_))
            (let ()
              (cons '@kw-lambda
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190199%_
                             '3
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190199%_
                                   '4
                                   '#f
                                   '#f))
                                '()))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self190061%_)
        (let ()
          (let ((_%self190064%_ _%self190061%_))
            (let ()
              (cons '@kw-lambda-dispatch
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190064%_
                             '3
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190064%_
                                   '4
                                   '#f
                                   '#f))
                                '()))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self189926%_)
        (let ()
          (let ((_%self189929%_ _%self189926%_))
            (let ()
              (cons '@primitive-predicate
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189929%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
