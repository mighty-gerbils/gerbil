(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1783939358)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp266124
                   (let ((__obj266118
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
                       (gxc#optimizer-info:::init! __obj266118))
                     __obj266118)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp266124)))))
    (define gxc#optimize!
      (lambda (_%ctx265726%_)
        (let ((__tmp266126
               (lambda ()
                 (let ((__tmp266128
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx265726%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx265726%_)
                          (let ((__tmp266130
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp266129
                                 (##structure-ref
                                  _%ctx265726%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp266130 __tmp266129 '#t))
                          (let ((_%code265730%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx265726%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx265726%_
                             _%code265730%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp266127
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp266128
                    gxc#current-compile-local-type
                    __tmp266127))))
              (__tmp266125 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp266126
           gxc#current-compile-mutators
           __tmp266125))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx265712%_)
        (letrec ((_%load-it!265714%_
                  (lambda (_%id265724%_)
                    (if (let ((__tmp266131
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp266131 _%id265724%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id265724%_)
                          (let ((__tmp266132
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp266132 _%id265724%_ '#t)))))))
          (let* ((_%modid265716%_
                  (##structure-ref
                   _%ctx265712%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str265718%_ (symbol->string _%modid265716%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str265718%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str265718%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!265714%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!265714%_
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
      (lambda (_%ctx265649%_)
        (letrec* ((_%deps265651%_
                   (let* ((_%imports265702%_
                           (##structure-ref
                            _%ctx265649%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e265704%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx265649%_))))
                     (if _%$e265704%_
                         (cons _%$e265704%_ _%imports265702%_)
                         _%imports265702%_))))
          (let _%lp265653%_ ((_%rest265655%_ _%deps265651%_))
            (let* ((_%$%rest265656265664%_ _%rest265655%_)
                   (_%$%else265658265672%_ (lambda () '#!void))
                   (_%$%K265660265690%_
                    (lambda (_%rest265675%_ _%hd265676%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd265676%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp266134
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp266133
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd265676%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp266134 __tmp266133))
                                '#!void
                                (begin
                                  (let ((_%$e265679%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd265676%_))))
                                    (if _%$e265679%_
                                        (_%lp265653%_
                                         (cons _%$e265679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd265676%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp265653%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd265676%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd265676%_)))
                            (_%lp265653%_ _%rest265675%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd265676%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp266136
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp266135
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd265676%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp266136 __tmp266135))
                                    '#!void
                                    (begin
                                      (_%lp265653%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd265676%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd265676%_)))
                                (_%lp265653%_ _%rest265675%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd265676%_
                                     'gx#module-import::t))
                                  (_%lp265653%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd265676%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest265675%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd265676%_
                                         'gx#module-export::t))
                                      (_%lp265653%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd265676%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest265675%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd265676%_
                                             'gx#import-set::t))
                                          (_%lp265653%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd265676%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest265675%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd265676%_))))))))))
              (if (pair? _%$%rest265656265664%_)
                  (let ((_%$%hd265661265693%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest265656265664%_)))
                        (_%$%tl265662265695%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest265656265664%_))))
                    (let* ((_%hd265698%_ _%$%hd265661265693%_)
                           (_%rest265700%_ _%$%tl265662265695%_))
                      (_%$%K265660265690%_ _%rest265700%_ _%hd265698%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx265629%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx265629%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx265629%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht265631%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id265633%_
                    (##structure-ref
                     _%ctx265629%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod265635%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht265631%_ _%id265633%_)))
                   (_%$e265638%_ _%mod265635%_))
              (if _%$e265638%_
                  _%$e265638%_
                  (let* ((_%mod265641%_
                          (gxc#optimizer-import-ssxi _%ctx265629%_))
                         (_%val265646%_
                          (let ((_%$e265643%_ _%mod265641%_))
                            (if _%$e265643%_ _%$e265643%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht265631%_ _%id265633%_ _%val265646%_))
                    _%val265646%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx265627%_)
        (if (##structure-ref _%ctx265627%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx265627%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id265605%_)
        (letrec ((_%catch-e265607%_
                  (lambda (_%exn265625%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn265625%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn265625%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id265605%_))))
                    '#f))
                 (_%import-e265608%_
                  (lambda ()
                    (let* ((_%str-id265611%_
                            (let ((__tmp266137
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id265605%_))))
                              (declare (not safe))
                              (##string-append __tmp266137 '".ssxi")))
                           (_%artefact-path265618%_
                            (let ((_%$%odir265612265614%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir265612265614%_
                                  (let ((_%odir265616%_
                                         _%$%odir265612265614%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id265611%_
                                        '".ss"))
                                     _%odir265616%_))
                                  '#f)))
                           (_%library-path265620%_
                            (let ((__tmp266138
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id265611%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp266138)))
                           (_%ssxi-path265622%_
                            (if (and _%artefact-path265618%_
                                     (file-exists? _%artefact-path265618%_))
                                _%artefact-path265618%_
                                _%library-path265620%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path265622%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path265622%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e265607%_ _%import-e265608%_)))))
    (define gxc#optimize-source
      (lambda (_%stx265590%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx265590%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx265590%_))
        (let* ((_%stx265592%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx265590%_)))
               (_%stx265594%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx265592%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx265594%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx265594%_))
          (let _%fixpoint265597%_ ((_%current265599%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx265594%_))
            (let ((_%refined265601%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current265599%_ _%refined265601%_)
                  '#!void
                  (_%fixpoint265597%_ _%refined265601%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx265594%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx265594%_))
          (let ((_%stx265603%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx265594%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx265603%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp266140 (list gxc#::generate-runtime-empty::t))
            (__tmp266139 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp266140
         '()
         __tmp266139
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args265587%_
        (apply make-instance gxc#::generate-ssxi::t _%$args265587%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp266141
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
        (__make-atomic-promise __tmp266141)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx265579%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self265582%_
                (let ((__obj266120
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj266120))
               (__tmp266142
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self265582%_ _%stx265579%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp266142
           gxc#current-compile-method
           _%self265582%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self265539%_ _%stx265540%_)
        (let* ((_%$%g265542265552%_
                (lambda (_%$%g265543265549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265543265549%_))))
               (_%$%g265541265576%_
                (lambda (_%$%g265543265555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265543265555%_))
                      (let ((_%$%e265545265557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g265543265555%_))))
                        (let ((_%$%hd265546265560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265545265557%_)))
                              (_%$%tl265547265562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265545265557%_))))
                          (let ((__tmp266145
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self265539%_
                                      _%stx265540%_))))
                                (__tmp266143
                                 (let ((__tmp266144
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp266144 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp266145
                             gx#current-expander-phi
                             __tmp266143))))
                      (_%$%g265542265552%_ _%$%g265543265555%_)))))
          (_%$%g265541265576%_ _%stx265540%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self265478%_ _%stx265479%_)
        (let* ((_%$%g265481265495%_
                (lambda (_%$%g265482265492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g265482265492%_))))
               (_%$%g265480265536%_
                (lambda (_%$%g265482265498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g265482265498%_))
                      (let ((_%$%e265485265500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g265482265498%_))))
                        (let ((_%$%hd265486265503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e265485265500%_)))
                              (_%$%tl265487265505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e265485265500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl265487265505%_))
                              (let ((_%$%e265488265508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl265487265505%_))))
                                (let ((_%$%hd265489265511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e265488265508%_)))
                                      (_%$%tl265490265513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e265488265508%_))))
                                  (let* ((_%ctx265530%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd265489265511%_)))
                                         (_%code265532%_
                                          (##structure-ref
                                           _%ctx265530%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp266146
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self265478%_
                                               _%code265532%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp266146
                                     gx#current-expander-context
                                     _%ctx265530%_))))
                              (_%$%g265481265495%_ _%$%g265482265498%_))))
                      (_%$%g265481265495%_ _%$%g265482265498%_)))))
          (_%$%g265480265536%_ _%stx265479%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self265285%_ _%stx265286%_)
        (letrec ((_%generate-e265288%_
                  (lambda (_%id265463%_)
                    (let* ((_%sym265465%_
                            (if (let ((__tmp266147
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp266147))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id265463%_))
                                '#f))
                           (_%$e265467%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym265465%_))))
                      (if _%$e265467%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym265465%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym265465%_
                                                    (cons (let ((__method266121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e265467%_ 'typedecl))))
                    (if __method266121
                        (let ()
                          (declare (not safe))
                          (__method266121 _%$e265467%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e265467%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym265465%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'quote
                                          (cons (cons 'typedecl
                                                      (cons _%sym265465%_ '()))
                                                '()))
                                    (cons (cons 'quote (cons 'class::t '()))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e265472%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym265465%_))))
                            (if _%$e265472%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym265465%_
                                     '" "
                                     _%$e265472%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e265472%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym265465%_
                                                  (cons (cons 'optimizer-resolve-class
                                                              (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons 'typedecl
                                              (cons _%sym265465%_ '()))
                                        '()))
                            (cons (cons 'quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#optimizer-lookup-class-name
                                                 _%$e265472%_))
                                              '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym265465%_
                                                  (cons (let ((__method266122
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e265472%_ 'typedecl))))
                  (if __method266122
                      (let ()
                        (declare (not safe))
                        (__method266122 _%$e265472%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e265472%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx265733265734%_ _%stx265286%_)
                 (_%$%g265291265329%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx265733265734%_)))))
            (let ((_%__kont265735265736%_
                   (lambda (_%$%g265293265445%_)
                     (_%generate-e265288%_ _%$%g265293265445%_)))
                  (_%__kont265737265738%_
                   (lambda (_%$%g265306265380%_)
                     (let ((_%types265406%_
                            (map _%generate-e265288%_
                                 (let ((__tmp266148
                                        (lambda (_%$%g265398265401%_
                                                 _%$%g265399265403%_)
                                          (cons _%$%g265398265401%_
                                                _%$%g265399265403%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp266148
                                    '()
                                    _%$%g265306265380%_)))))
                       (cons 'begin _%types265406%_)))))
              (let ((_%__match265788265789%_
                     (lambda (_%$%e265307265334%_
                              _%$%hd265308265337%_
                              _%$%tl265309265339%_
                              _%$%e265310265342%_
                              _%$%hd265311265345%_
                              _%$%tl265312265347%_
                              _%__splice265739265740%_
                              _%$%target265313265350%_
                              _%$%tl265315265352%_)
                       (letrec ((_%$%loop265316265355%_
                                 (lambda (_%$%hd265314265358%_
                                          _%$%id265320265360%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd265314265358%_))
                                       (let ((_%$%e265317265362%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd265314265358%_))))
                                         (let ((_%$%lp-tl265319265367%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e265317265362%_)))
                                               (_%$%lp-hd265318265365%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e265317265362%_))))
                                           (_%$%loop265316265355%_
                                            _%$%lp-tl265319265367%_
                                            (cons _%$%lp-hd265318265365%_
                                                  _%$%id265320265360%_))))
                                       (let ((_%$%id265321265370%_
                                              (reverse _%$%id265320265360%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl265312265347%_))
                                             (let ((_%$%e265322265372%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl265312265347%_))))
                                               (let ((_%$%tl265324265377%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e265322265372%_)))
                                                     (_%$%hd265323265375%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e265322265372%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl265324265377%_))
                                                     (_%__kont265737265738%_
                                                      _%$%id265321265370%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g265291265329%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g265291265329%_))))))))
                         (_%$%loop265316265355%_
                          _%$%target265313265350%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx265733265734%_))
                    (let ((_%$%e265294265413%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx265733265734%_))))
                      (let ((_%$%tl265296265418%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e265294265413%_)))
                            (_%$%hd265295265416%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e265294265413%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl265296265418%_))
                            (let ((_%$%e265297265421%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl265296265418%_))))
                              (let ((_%$%tl265299265426%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e265297265421%_)))
                                    (_%$%hd265298265424%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e265297265421%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd265298265424%_))
                                    (let ((_%$%e265300265429%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd265298265424%_))))
                                      (let ((_%$%tl265302265434%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e265300265429%_)))
                                            (_%$%hd265301265432%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e265300265429%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl265302265434%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl265299265426%_))
                                                (let ((_%$%e265303265437%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl265299265426%_))))
                                                  (let ((_%$%tl265305265442%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e265303265437%_)))
                                                        (_%$%hd265304265440%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e265303265437%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl265305265442%_))
                                                        (_%__kont265735265736%_
                                                         _%$%hd265301265432%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd265298265424%_))
                                                            (let ((_%__splice265739265740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd265298265424%_
                              '0))))
                      (let ((_%$%tl265315265352%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice265739265740%_ '1)))
                            (_%$%target265313265350%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice265739265740%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl265315265352%_))
                            (_%__match265788265789%_
                             _%$%e265294265413%_
                             _%$%hd265295265416%_
                             _%$%tl265296265418%_
                             _%$%e265297265421%_
                             _%$%hd265298265424%_
                             _%$%tl265299265426%_
                             _%__splice265739265740%_
                             _%$%target265313265350%_
                             _%$%tl265315265352%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g265291265329%_)))))
                    (let () (declare (not safe)) (_%$%g265291265329%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd265298265424%_))
                                                    (let ((_%__splice265739265740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd265298265424%_
                                                              '0))))
                                                      (let ((_%$%tl265315265352%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice265739265740%_ '1)))
                    (_%$%target265313265350%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice265739265740%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl265315265352%_))
                    (_%__match265788265789%_
                     _%$%e265294265413%_
                     _%$%hd265295265416%_
                     _%$%tl265296265418%_
                     _%$%e265297265421%_
                     _%$%hd265298265424%_
                     _%$%tl265299265426%_
                     _%__splice265739265740%_
                     _%$%target265313265350%_
                     _%$%tl265315265352%_)
                    (let () (declare (not safe)) (_%$%g265291265329%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g265291265329%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd265298265424%_))
                                                (let ((_%__splice265739265740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd265298265424%_
                                                          '0))))
                                                  (let ((_%$%tl265315265352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice265739265740%_
                                                            '1)))
                                                        (_%$%target265313265350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice265739265740%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl265315265352%_))
                                                        (_%__match265788265789%_
                                                         _%$%e265294265413%_
                                                         _%$%hd265295265416%_
                                                         _%$%tl265296265418%_
                                                         _%$%e265297265421%_
                                                         _%$%hd265298265424%_
                                                         _%$%tl265299265426%_
                                                         _%__splice265739265740%_
                                                         _%$%target265313265350%_
                                                         _%$%tl265315265352%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g265291265329%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g265291265329%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd265298265424%_))
                                        (let ((_%__splice265739265740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd265298265424%_
                                                  '0))))
                                          (let ((_%$%tl265315265352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice265739265740%_
                                                    '1)))
                                                (_%$%target265313265350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice265739265740%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl265315265352%_))
                                                (_%__match265788265789%_
                                                 _%$%e265294265413%_
                                                 _%$%hd265295265416%_
                                                 _%$%tl265296265418%_
                                                 _%$%e265297265421%_
                                                 _%$%hd265298265424%_
                                                 _%$%tl265299265426%_
                                                 _%__splice265739265740%_
                                                 _%$%target265313265350%_
                                                 _%$%tl265315265352%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g265291265329%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g265291265329%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g265291265329%_)))))
                    (let () (declare (not safe)) (_%$%g265291265329%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self264838%_ _%stx264839%_)
        (let* ((_%__stx265791265792%_ _%stx264839%_)
               (_%$%g264843264945%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx265791265792%_)))))
          (let ((_%__kont265793265794%_
                 (lambda (_%$%g264845265235%_
                          _%$%g264846265236%_
                          _%$%g264847265237%_
                          _%$%g264848265238%_
                          _%$%g264849265239%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g264848265238%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g264847265237%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g264846265236%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g264845265235%_))
                                                 '())))))))
                (_%__kont265795265796%_
                 (lambda (_%$%g264898265061%_
                          _%$%g264899265062%_
                          _%$%g264900265063%_
                          _%$%g264901265064%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g264900265063%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g264899265062%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g264898265061%_))
                                           (cons '#f '())))))))
                (_%__kont265797265798%_ (lambda () '(begin))))
            (let ((_%__match265926265927%_
                   (lambda (_%$%e264850265107%_
                            _%$%hd264851265110%_
                            _%$%tl264852265112%_
                            _%$%e264853265115%_
                            _%$%hd264854265118%_
                            _%$%tl264855265120%_
                            _%$%e264856265123%_
                            _%$%hd264857265126%_
                            _%$%tl264858265128%_
                            _%$%e264859265131%_
                            _%$%hd264860265134%_
                            _%$%tl264861265136%_
                            _%$%e264862265139%_
                            _%$%hd264863265142%_
                            _%$%tl264864265144%_
                            _%$%e264865265147%_
                            _%$%hd264866265150%_
                            _%$%tl264867265152%_
                            _%$%e264868265155%_
                            _%$%hd264869265158%_
                            _%$%tl264870265160%_
                            _%$%e264871265163%_
                            _%$%hd264872265166%_
                            _%$%tl264873265168%_
                            _%$%e264874265171%_
                            _%$%hd264875265174%_
                            _%$%tl264876265176%_
                            _%$%e264877265179%_
                            _%$%hd264878265182%_
                            _%$%tl264879265184%_
                            _%$%e264880265187%_
                            _%$%hd264881265190%_
                            _%$%tl264882265192%_
                            _%$%e264883265195%_
                            _%$%hd264884265198%_
                            _%$%tl264885265200%_
                            _%$%e264886265203%_
                            _%$%hd264887265206%_
                            _%$%tl264888265208%_
                            _%$%e264889265211%_
                            _%$%hd264890265214%_
                            _%$%tl264891265216%_
                            _%$%e264892265219%_
                            _%$%hd264893265222%_
                            _%$%tl264894265224%_
                            _%$%e264895265227%_
                            _%$%hd264896265230%_
                            _%$%tl264897265232%_)
                     (let ((_%$%g264845265235%_ _%$%hd264896265230%_)
                           (_%$%g264846265236%_ _%$%hd264887265206%_)
                           (_%$%g264847265237%_ _%$%hd264878265182%_)
                           (_%$%g264848265238%_ _%$%hd264869265158%_)
                           (_%$%g264849265239%_ _%$%hd264860265134%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g264849265239%_
                              'bind-method!))
                           (_%__kont265793265794%_
                            _%$%g264845265235%_
                            _%$%g264846265236%_
                            _%$%g264847265237%_
                            _%$%g264848265238%_
                            _%$%g264849265239%_)
                           (_%__kont265797265798%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx265791265792%_))
                  (let ((_%$%e264850265107%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx265791265792%_))))
                    (let ((_%$%tl264852265112%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e264850265107%_)))
                          (_%$%hd264851265110%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e264850265107%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl264852265112%_))
                          (let ((_%$%e264853265115%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl264852265112%_))))
                            (let ((_%$%tl264855265120%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264853265115%_)))
                                  (_%$%hd264854265118%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264853265115%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd264854265118%_))
                                  (let ((_%$%e264856265123%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd264854265118%_))))
                                    (let ((_%$%tl264858265128%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e264856265123%_)))
                                          (_%$%hd264857265126%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e264856265123%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd264857265126%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd264857265126%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl264858265128%_))
                                                  (let ((_%$%e264859265131%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl264858265128%_))))
                                                    (let ((_%$%tl264861265136%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e264859265131%_)))
                                                          (_%$%hd264860265134%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e264859265131%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl264861265136%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl264855265120%_))
                      (let ((_%$%e264862265139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl264855265120%_))))
                        (let ((_%$%tl264864265144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264862265139%_)))
                              (_%$%hd264863265142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264862265139%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd264863265142%_))
                              (let ((_%$%e264865265147%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd264863265142%_))))
                                (let ((_%$%tl264867265152%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e264865265147%_)))
                                      (_%$%hd264866265150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e264865265147%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd264866265150%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd264866265150%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl264867265152%_))
                                              (let ((_%$%e264868265155%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl264867265152%_))))
                                                (let ((_%$%tl264870265160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e264868265155%_)))
                                                      (_%$%hd264869265158%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e264868265155%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl264870265160%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl264864265144%_))
                                                          (let ((_%$%e264871265163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl264864265144%_))))
                    (let ((_%$%tl264873265168%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e264871265163%_)))
                          (_%$%hd264872265166%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e264871265163%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd264872265166%_))
                          (let ((_%$%e264874265171%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd264872265166%_))))
                            (let ((_%$%tl264876265176%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e264874265171%_)))
                                  (_%$%hd264875265174%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e264874265171%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd264875265174%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd264875265174%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl264876265176%_))
                                          (let ((_%$%e264877265179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl264876265176%_))))
                                            (let ((_%$%tl264879265184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e264877265179%_)))
                                                  (_%$%hd264878265182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e264877265179%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl264879265184%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl264873265168%_))
                                                      (let ((_%$%e264880265187%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl264873265168%_))))
                (let ((_%$%tl264882265192%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e264880265187%_)))
                      (_%$%hd264881265190%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e264880265187%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd264881265190%_))
                      (let ((_%$%e264883265195%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd264881265190%_))))
                        (let ((_%$%tl264885265200%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e264883265195%_)))
                              (_%$%hd264884265198%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e264883265195%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd264884265198%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd264884265198%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl264885265200%_))
                                      (let ((_%$%e264886265203%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl264885265200%_))))
                                        (let ((_%$%tl264888265208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e264886265203%_)))
                                              (_%$%hd264887265206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e264886265203%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl264888265208%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl264882265192%_))
                                                  (let ((_%$%e264889265211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl264882265192%_))))
                                                    (let ((_%$%tl264891265216%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e264889265211%_)))
                                                          (_%$%hd264890265214%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e264889265211%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd264890265214%_))
                                                          (let ((_%$%e264892265219%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd264890265214%_))))
                    (let ((_%$%tl264894265224%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e264892265219%_)))
                          (_%$%hd264893265222%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e264892265219%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd264893265222%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd264893265222%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl264894265224%_))
                                  (let ((_%$%e264895265227%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl264894265224%_))))
                                    (let ((_%$%tl264897265232%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e264895265227%_)))
                                          (_%$%hd264896265230%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e264895265227%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl264897265232%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl264891265216%_))
                                              (_%__match265926265927%_
                                               _%$%e264850265107%_
                                               _%$%hd264851265110%_
                                               _%$%tl264852265112%_
                                               _%$%e264853265115%_
                                               _%$%hd264854265118%_
                                               _%$%tl264855265120%_
                                               _%$%e264856265123%_
                                               _%$%hd264857265126%_
                                               _%$%tl264858265128%_
                                               _%$%e264859265131%_
                                               _%$%hd264860265134%_
                                               _%$%tl264861265136%_
                                               _%$%e264862265139%_
                                               _%$%hd264863265142%_
                                               _%$%tl264864265144%_
                                               _%$%e264865265147%_
                                               _%$%hd264866265150%_
                                               _%$%tl264867265152%_
                                               _%$%e264868265155%_
                                               _%$%hd264869265158%_
                                               _%$%tl264870265160%_
                                               _%$%e264871265163%_
                                               _%$%hd264872265166%_
                                               _%$%tl264873265168%_
                                               _%$%e264874265171%_
                                               _%$%hd264875265174%_
                                               _%$%tl264876265176%_
                                               _%$%e264877265179%_
                                               _%$%hd264878265182%_
                                               _%$%tl264879265184%_
                                               _%$%e264880265187%_
                                               _%$%hd264881265190%_
                                               _%$%tl264882265192%_
                                               _%$%e264883265195%_
                                               _%$%hd264884265198%_
                                               _%$%tl264885265200%_
                                               _%$%e264886265203%_
                                               _%$%hd264887265206%_
                                               _%$%tl264888265208%_
                                               _%$%e264889265211%_
                                               _%$%hd264890265214%_
                                               _%$%tl264891265216%_
                                               _%$%e264892265219%_
                                               _%$%hd264893265222%_
                                               _%$%tl264894265224%_
                                               _%$%e264895265227%_
                                               _%$%hd264896265230%_
                                               _%$%tl264897265232%_)
                                              (_%__kont265797265798%_))
                                          (_%__kont265797265798%_))))
                                  (_%__kont265797265798%_))
                              (_%__kont265797265798%_))
                          (_%__kont265797265798%_))))
                  (_%__kont265797265798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl264882265192%_))
                                                      (if (let ((__tmp266149
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp266149 'bind-method!))
                  (let ((_%$%g264898265061%_ _%$%hd264887265206%_)
                        (_%$%g264899265062%_ _%$%hd264878265182%_)
                        (_%$%g264900265063%_ _%$%hd264869265158%_)
                        (_%$%g264901265064%_ _%$%hd264860265134%_))
                    (_%__kont265795265796%_
                     _%$%g264898265061%_
                     _%$%g264899265062%_
                     _%$%g264900265063%_
                     _%$%g264901265064%_))
                  (_%__kont265797265798%_))
              (_%__kont265797265798%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont265797265798%_))))
                                      (_%__kont265797265798%_))
                                  (_%__kont265797265798%_))
                              (_%__kont265797265798%_))))
                      (_%__kont265797265798%_))))
              (_%__kont265797265798%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont265797265798%_))))
                                          (_%__kont265797265798%_))
                                      (_%__kont265797265798%_))
                                  (_%__kont265797265798%_))))
                          (_%__kont265797265798%_))))
                  (_%__kont265797265798%_))
              (_%__kont265797265798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont265797265798%_))
                                          (_%__kont265797265798%_))
                                      (_%__kont265797265798%_))))
                              (_%__kont265797265798%_))))
                      (_%__kont265797265798%_))
                  (_%__kont265797265798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont265797265798%_))
                                              (_%__kont265797265798%_))
                                          (_%__kont265797265798%_))))
                                  (_%__kont265797265798%_))))
                          (_%__kont265797265798%_))))
                  (_%__kont265797265798%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self264662%_ _%stx264663%_)
        (let* ((_%__stx266035266036%_ _%stx264663%_)
               (_%$%g264666264706%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx266035266036%_)))))
          (let ((_%__kont266037266038%_
                 (lambda (_%$%g264668264812%_ _%$%g264669264813%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g264669264813%_))
                               (cons _%$%g264668264812%_ '())))))
                (_%__kont266039266040%_
                 (lambda (_%$%g264691264735%_ _%$%g264692264736%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx266035266036%_))
                (let ((_%$%e264670264756%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx266035266036%_))))
                  (let ((_%$%tl264672264761%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e264670264756%_)))
                        (_%$%hd264671264759%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e264670264756%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl264672264761%_))
                        (let ((_%$%e264673264764%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl264672264761%_))))
                          (let ((_%$%tl264675264769%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e264673264764%_)))
                                (_%$%hd264674264767%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e264673264764%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd264674264767%_))
                                (let ((_%$%e264676264772%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd264674264767%_))))
                                  (let ((_%$%tl264678264777%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e264676264772%_)))
                                        (_%$%hd264677264775%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e264676264772%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd264677264775%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd264677264775%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl264678264777%_))
                                                (let ((_%$%e264679264780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl264678264777%_))))
                                                  (let ((_%$%tl264681264785%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e264679264780%_)))
                                                        (_%$%hd264680264783%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e264679264780%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264681264785%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl264675264769%_))
                                                            (let ((_%$%e264682264788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl264675264769%_))))
                      (let ((_%$%tl264684264793%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e264682264788%_)))
                            (_%$%hd264683264791%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e264682264788%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd264683264791%_))
                            (let ((_%$%e264685264796%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd264683264791%_))))
                              (let ((_%$%tl264687264801%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e264685264796%_)))
                                    (_%$%hd264686264799%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e264685264796%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd264686264799%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd264686264799%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl264687264801%_))
                                            (let ((_%$%e264688264804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl264687264801%_))))
                                              (let ((_%$%tl264690264809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e264688264804%_)))
                                                    (_%$%hd264689264807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e264688264804%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl264690264809%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264684264793%_))
                                                        (_%__kont266037266038%_
                                                         _%$%hd264689264807%_
                                                         _%$%hd264680264783%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g264666264706%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264684264793%_))
                                                        (_%__kont266039266040%_
                                                         _%$%hd264683264791%_
                                                         _%$%hd264674264767%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g264666264706%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl264684264793%_))
                                                (_%__kont266039266040%_
                                                 _%$%hd264683264791%_
                                                 _%$%hd264674264767%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g264666264706%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl264684264793%_))
                                            (_%__kont266039266040%_
                                             _%$%hd264683264791%_
                                             _%$%hd264674264767%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g264666264706%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl264684264793%_))
                                        (_%__kont266039266040%_
                                         _%$%hd264683264791%_
                                         _%$%hd264674264767%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g264666264706%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl264684264793%_))
                                (_%__kont266039266040%_
                                 _%$%hd264683264791%_
                                 _%$%hd264674264767%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g264666264706%_))))))
                    (let () (declare (not safe)) (_%$%g264666264706%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl264675264769%_))
                    (let ((_%$%e264699264727%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl264675264769%_))))
                      (let ((_%$%tl264701264732%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e264699264727%_)))
                            (_%$%hd264700264730%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e264699264727%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl264701264732%_))
                            (_%__kont266039266040%_
                             _%$%hd264700264730%_
                             _%$%hd264674264767%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g264666264706%_)))))
                    (let () (declare (not safe)) (_%$%g264666264706%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl264675264769%_))
                                                    (let ((_%$%e264699264727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl264675264769%_))))
                                                      (let ((_%$%tl264701264732%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e264699264727%_)))
                    (_%$%hd264700264730%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e264699264727%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl264701264732%_))
                    (_%__kont266039266040%_
                     _%$%hd264700264730%_
                     _%$%hd264674264767%_)
                    (let () (declare (not safe)) (_%$%g264666264706%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g264666264706%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl264675264769%_))
                                                (let ((_%$%e264699264727%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl264675264769%_))))
                                                  (let ((_%$%tl264701264732%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e264699264727%_)))
                                                        (_%$%hd264700264730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e264699264727%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl264701264732%_))
                                                        (_%__kont266039266040%_
                                                         _%$%hd264700264730%_
                                                         _%$%hd264674264767%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g264666264706%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g264666264706%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl264675264769%_))
                                            (let ((_%$%e264699264727%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl264675264769%_))))
                                              (let ((_%$%tl264701264732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e264699264727%_)))
                                                    (_%$%hd264700264730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e264699264727%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl264701264732%_))
                                                    (_%__kont266039266040%_
                                                     _%$%hd264700264730%_
                                                     _%$%hd264674264767%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g264666264706%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g264666264706%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl264675264769%_))
                                    (let ((_%$%e264699264727%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl264675264769%_))))
                                      (let ((_%$%tl264701264732%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e264699264727%_)))
                                            (_%$%hd264700264730%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e264699264727%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl264701264732%_))
                                            (_%__kont266039266040%_
                                             _%$%hd264700264730%_
                                             _%$%hd264674264767%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g264666264706%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g264666264706%_))))))
                        (let () (declare (not safe)) (_%$%g264666264706%_)))))
                (let () (declare (not safe)) (_%$%g264666264706%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self264649%_)
        (let ((_%self264652%_ _%self264649%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264652%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self264423%_)
        (let* ((_%self264426%_ _%self264423%_)
               (_%$%self264435264451%_ _%self264426%_)
               (_%$%E264437264454%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self264435264451%_
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
               (_%$%K264438264469%_
                (lambda (_%methods264457%_
                         _%metaclass264458%_
                         _%system?264459%_
                         _%final?264460%_
                         _%struct?264461%_
                         _%constructor264462%_
                         _%fields264463%_
                         _%slots264464%_
                         _%precendence-list264465%_
                         _%super264466%_
                         _%id264467%_)
                  (cons '@class
                        (cons _%id264467%_
                              (cons _%super264466%_
                                    (cons _%precendence-list264465%_
                                          (cons _%slots264464%_
                                                (cons _%fields264463%_
                                                      (cons _%constructor264462%_
                                                            (cons _%struct?264461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?264460%_
                                (cons _%system?264459%_
                                      (cons _%metaclass264458%_
                                            (cons (if _%methods264457%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods264457%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e264439264472%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '1
                   '#f
                   '#f)))
               (_%id264475%_ _%$%e264439264472%_)
               (_%$%e264440264477%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '2
                   '#f
                   '#f)))
               (_%super264480%_ _%$%e264440264477%_)
               (_%$%e264441264482%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list264485%_ _%$%e264441264482%_)
               (_%$%e264442264487%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '4
                   '#f
                   '#f)))
               (_%slots264490%_ _%$%e264442264487%_)
               (_%$%e264443264492%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '5
                   '#f
                   '#f)))
               (_%fields264495%_ _%$%e264443264492%_)
               (_%$%e264444264497%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '6
                   '#f
                   '#f)))
               (_%constructor264500%_ _%$%e264444264497%_)
               (_%$%e264445264502%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '7
                   '#f
                   '#f)))
               (_%struct?264505%_ _%$%e264445264502%_)
               (_%$%e264446264507%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '8
                   '#f
                   '#f)))
               (_%final?264510%_ _%$%e264446264507%_)
               (_%$%e264447264512%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '9
                   '#f
                   '#f)))
               (_%system?264515%_ _%$%e264447264512%_)
               (_%$%e264448264517%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass264520%_ _%$%e264448264517%_)
               (_%$%e264449264522%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self264435264451%_
                   '11
                   '#f
                   '#f)))
               (_%methods264525%_ _%$%e264449264522%_))
          (_%$%K264438264469%_
           _%methods264525%_
           _%metaclass264520%_
           _%system?264515%_
           _%final?264510%_
           _%struct?264505%_
           _%constructor264500%_
           _%fields264495%_
           _%slots264490%_
           _%precendence-list264485%_
           _%super264480%_
           _%id264475%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self264288%_)
        (let ((_%self264291%_ _%self264288%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264291%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self264153%_)
        (let ((_%self264156%_ _%self264153%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264156%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self264018%_)
        (let ((_%self264021%_ _%self264018%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self264021%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self264021%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self264021%_
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
      (lambda (_%self263883%_)
        (let ((_%self263886%_ _%self263883%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263886%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self263886%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self263886%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self263748%_)
        (let ((_%self263751%_ _%self263748%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263751%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self263751%_
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
      (lambda (_%self263562%_)
        (let* ((_%self263565%_ _%self263562%_)
               (_%$%self263574263583%_ _%self263565%_)
               (_%$%E263576263586%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self263574263583%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K263577263605%_
                (lambda (_%dispatch263589%_
                         _%arity263590%_
                         _%signature263591%_)
                  (if _%signature263591%_
                      (let ((_%signature263593%_ _%signature263591%_))
                        (cons '@lambda
                              (cons _%arity263590%_
                                    (cons _%dispatch263589%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature263593%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature263593%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature263593%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature263593%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature263593%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity263590%_
                                  (cons _%dispatch263589%_ '()))))))
               (_%$%e263578263608%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263574263583%_
                   '1
                   '#f
                   '#f)))
               (_%$%e263579263611%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263574263583%_
                   '2
                   '#f
                   '#f)))
               (_%signature263614%_ _%$%e263579263611%_)
               (_%$%e263580263616%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263574263583%_
                   '3
                   '#f
                   '#f)))
               (_%arity263619%_ _%$%e263580263616%_)
               (_%$%e263581263621%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self263574263583%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch263624%_ _%$%e263581263621%_))
          (_%$%K263577263605%_
           _%dispatch263624%_
           _%arity263619%_
           _%signature263614%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self263422%_)
        (let ((_%self263425%_ _%self263422%_))
          (letrec ((_%clause-e263436%_
                    (lambda (_%clause263438%_)
                      (cdr (let ((__method266123
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause263438%_
                                     'typedecl))))
                             (if __method266123
                                 (let ()
                                   (declare (not safe))
                                   (__method266123 _%clause263438%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause263438%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e263436%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self263425%_
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
      (lambda (_%self263287%_)
        (let ((_%self263290%_ _%self263287%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263290%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self263290%_
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
      (lambda (_%self263152%_)
        (let ((_%self263155%_ _%self263152%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263155%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self263155%_
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
      (lambda (_%self263017%_)
        (let ((_%self263020%_ _%self263017%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self263020%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
