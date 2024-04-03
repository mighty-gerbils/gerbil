(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712124241)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp192976
                   (let ((__obj192970
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj192970)
                     __obj192970)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp192976)))))
    (define gxc#optimize!
      (lambda (_%ctx192579%_)
        (let ((__tmp192979
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx192579%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx192579%_))
                 (let ((__tmp192981
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp192980
                        (##structure-ref
                         _%ctx192579%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp192981 __tmp192980 '#t))
                 (let ((_%code192582%_
                        (let ((__tmp192982
                               (##structure-ref
                                _%ctx192579%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp192982))))
                   (##structure-set!
                    _%ctx192579%_
                    _%code192582%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp192978 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp192977 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp192979
           gxc#current-compile-mutators
           __tmp192978
           gxc#current-compile-local-type
           __tmp192977))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx192565%_)
        (letrec ((_%load-it!192567%_
                  (lambda (_%id192577%_)
                    (if (let ((__tmp192983
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp192983 _%id192577%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id192577%_))
                          (let ((__tmp192984
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp192984 _%id192577%_ '#t)))))))
          (let* ((_%modid192569%_
                  (##structure-ref
                   _%ctx192565%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str192571%_ (symbol->string _%modid192569%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str192571%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str192571%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192567%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192567%_
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
      (lambda (_%ctx192502%_)
        (letrec* ((_%deps192504%_
                   (let* ((_%imports192555%_
                           (##structure-ref
                            _%ctx192502%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e192557%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx192502%_))))
                     (if _%$e192557%_
                         ((lambda (_%g192559192561%_)
                            (cons _%g192559192561%_ _%imports192555%_))
                          _%$e192557%_)
                         (let () _%imports192555%_)))))
          (let _%lp192506%_ ((_%rest192508%_ _%deps192504%_))
            (let* ((_%rest192509192517%_ _%rest192508%_)
                   (_%else192511192525%_ (lambda () '#!void))
                   (_%K192513192543%_
                    (lambda (_%rest192528%_ _%hd192529%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd192529%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp192986
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp192985
                                       (##structure-ref
                                        _%hd192529%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp192986 __tmp192985))
                                '#!void
                                (begin
                                  (let ((_%$e192532%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd192529%_))))
                                    (if _%$e192532%_
                                        ((lambda (_%pre192535%_)
                                           (let ((__tmp192987
                                                  (cons _%pre192535%_
                                                        (##structure-ref
                                                         _%hd192529%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp192506%_ __tmp192987)))
                                         _%$e192532%_)
                                        (let ()
                                          (let ((__tmp192988
                                                 (##structure-ref
                                                  _%hd192529%_
                                                  '8
                                                  gx#module-context::t
                                                  '#f)))
                                            (declare (not safe))
                                            (_%lp192506%_ __tmp192988)))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd192529%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp192506%_ _%rest192528%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd192529%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp192990
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp192989
                                           (##structure-ref
                                            _%hd192529%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp192990 __tmp192989))
                                    '#!void
                                    (begin
                                      (let ((__tmp192991
                                             (##structure-ref
                                              _%hd192529%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp192506%_ __tmp192991))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd192529%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp192506%_ _%rest192528%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd192529%_
                                     'gx#module-import::t))
                                  (let ()
                                    (let ((__tmp192992
                                           (cons (##direct-structure-ref
                                                  _%hd192529%_
                                                  '1
                                                  gx#module-import::t
                                                  '#f)
                                                 _%rest192528%_)))
                                      (declare (not safe))
                                      (_%lp192506%_ __tmp192992)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd192529%_
                                         'gx#module-export::t))
                                      (let ()
                                        (let ((__tmp192993
                                               (cons (##direct-structure-ref
                                                      _%hd192529%_
                                                      '1
                                                      gx#module-export::t
                                                      '#f)
                                                     _%rest192528%_)))
                                          (declare (not safe))
                                          (_%lp192506%_ __tmp192993)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd192529%_
                                             'gx#import-set::t))
                                          (let ()
                                            (let ((__tmp192994
                                                   (cons (##direct-structure-ref
                                                          _%hd192529%_
                                                          '1
                                                          gx#import-set::t
                                                          '#f)
                                                         _%rest192528%_)))
                                              (declare (not safe))
                                              (_%lp192506%_ __tmp192994)))
                                          (let ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"Unexpected module import"
                                                     _%hd192529%_)))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest192509192517%_))
                  (let ((_%hd192514192546%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest192509192517%_)))
                        (_%tl192515192548%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest192509192517%_))))
                    (let* ((_%hd192551%_ _%hd192514192546%_)
                           (_%rest192553%_ _%tl192515192548%_))
                      (declare (not safe))
                      (_%K192513192543%_ _%rest192553%_ _%hd192551%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192482%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192482%_
                    'gx#module-context::t))
                 (let ((__tmp192995
                        (##structure-ref
                         _%ctx192482%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp192995)))
            '#!void
            (let* ((_%ht192484%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192486%_
                    (##structure-ref
                     _%ctx192482%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192488%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192484%_ _%id192486%_))))
              (let ((_%$e192491%_ _%mod192488%_))
                (if _%$e192491%_
                    _%$e192491%_
                    (let* ((_%mod192494%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-import-ssxi _%ctx192482%_)))
                           (_%val192499%_
                            (let ((_%$e192496%_ _%mod192494%_))
                              (if _%$e192496%_ _%$e192496%_ '#!void))))
                      (let ()
                        (declare (not safe))
                        (hash-put! _%ht192484%_ _%id192486%_ _%val192499%_))
                      _%val192499%_)))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192480%_)
        (if (##structure-ref _%ctx192480%_ '1 gx#expander-context::t '#f)
            (let ((__tmp192996
                   (##structure-ref
                    _%ctx192480%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp192996))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192457%_)
        (letrec ((_%catch-e192459%_
                  (lambda (_%exn192478%_)
                    (display-exception _%exn192478%_)
                    (let ()
                      (declare (not safe))
                      (displayln
                       '"*** WARNING Failed to load ssxi module for "
                       _%id192457%_))
                    '#f))
                 (_%import-e192460%_
                  (lambda ()
                    (let* ((_%str-id192463%_
                            (let ((__tmp192997
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192457%_))))
                              (declare (not safe))
                              (##string-append __tmp192997 '".ssxi")))
                           (_%artefact-path192471%_
                            (let ((_%odir192464192466%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192464192466%_
                                  (let ((_%odir192469%_ _%odir192464192466%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192463%_
                                        '".ss"))
                                     _%odir192469%_))
                                  '#f)))
                           (_%library-path192473%_
                            (let ((__tmp192998
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192463%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp192998)))
                           (_%ssxi-path192475%_
                            (if (and _%artefact-path192471%_
                                     (file-exists? _%artefact-path192471%_))
                                _%artefact-path192471%_
                                _%library-path192473%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192475%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192475%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192459%_ _%import-e192460%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192448%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192448%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192448%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192448%_))
        (let* ((_%stx192450%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192448%_)))
               (_%stx192452%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192450%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192452%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192452%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192452%_))
          (let ((_%stx192455%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192452%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192455%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193000 (list gxc#::generate-runtime-empty::t))
            (__tmp192999 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193000
         '()
         __tmp192999
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192445%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192445%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193001
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
        (__make-promise __tmp193001)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192437%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192440%_
                (let ((__obj192972
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj192972))
               (__tmp193002
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192440%_ _%stx192437%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193002
           gxc#current-compile-method
           _%self192440%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192397%_ _%stx192398%_)
        (let* ((_%g192400192410%_
                (lambda (_%g192401192407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192401192407%_))))
               (_%g192399192434%_
                (lambda (_%g192401192413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192401192413%_))
                      (let ((_%e192405192415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192401192413%_))))
                        (let ((_%hd192404192418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192405192415%_)))
                              (_%tl192403192420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192405192415%_))))
                          ((lambda (_%L192423%_)
                             (let ((__tmp193005
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192397%_
                                         _%stx192398%_))))
                                   (__tmp193003
                                    (let ((__tmp193004
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193004 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193005
                                gx#current-expander-phi
                                __tmp193003)))
                           _%tl192403192420%_)))
                      (let ()
                        (declare (not safe))
                        (_%g192400192410%_ _%g192401192413%_))))))
          (declare (not safe))
          (_%g192399192434%_ _%stx192398%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192336%_ _%stx192337%_)
        (let* ((_%g192339192353%_
                (lambda (_%g192340192350%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192340192350%_))))
               (_%g192338192394%_
                (lambda (_%g192340192356%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192340192356%_))
                      (let ((_%e192345192358%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192340192356%_))))
                        (let ((_%hd192344192361%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192345192358%_)))
                              (_%tl192343192363%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192345192358%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192343192363%_))
                              (let ((_%e192348192366%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192343192363%_))))
                                (let ((_%hd192347192369%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192348192366%_)))
                                      (_%tl192346192371%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192348192366%_))))
                                  ((lambda (_%L192374%_ _%L192375%_)
                                     (let* ((_%ctx192388%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192375%_)))
                                            (_%code192390%_
                                             (##structure-ref
                                              _%ctx192388%_
                                              '11
                                              gx#module-context::t
                                              '#f)))
                                       (let ((__tmp193006
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self192336%_
                                                   _%code192390%_)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp193006
                                          gx#current-expander-context
                                          _%ctx192388%_))))
                                   _%tl192346192371%_
                                   _%hd192347192369%_)))
                              (let ()
                                (declare (not safe))
                                (_%g192339192353%_ _%g192340192356%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g192339192353%_ _%g192340192356%_))))))
          (declare (not safe))
          (_%g192338192394%_ _%stx192337%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192141%_ _%stx192142%_)
        (letrec ((_%generate-e192144%_
                  (lambda (_%id192321%_)
                    (let* ((_%sym192323%_
                            (if (let ((__tmp193007
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193007))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192321%_))
                                '#f))
                           (_%$e192325%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192323%_))))
                      (if _%$e192325%_
                          ((lambda (_%klass192328%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192323%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192323%_
                                                     (cons (let ((__method192973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192328%_ 'typedecl))))
                     (if __method192973
                         (__method192973 _%klass192328%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192328%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192323%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192323%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192325%_)
                          (let ((_%$e192330%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192323%_))))
                            (if _%$e192330%_
                                ((lambda (_%type192333%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192323%_
                                      '" "
                                      _%type192333%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192333%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192323%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192323%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192333%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192323%_
                                                   (cons (let ((__method192974
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192333%_ 'typedecl))))
                   (if __method192974
                       (__method192974 _%type192333%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192333%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192330%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx192585192586%_ _%stx192142%_)
                 (_%g192147192185%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx192585192586%_)))))
            (let ((_%__kont192587192588%_
                   (lambda (_%L192303%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e192144%_ _%L192303%_))))
                  (_%__kont192589192590%_
                   (lambda (_%L192238%_)
                     (let ((_%types192264%_
                            (map _%generate-e192144%_
                                 (let ((__tmp193008
                                        (lambda (_%g192256192259%_
                                                 _%g192257192261%_)
                                          (cons _%g192256192259%_
                                                _%g192257192261%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193008 '() _%L192238%_)))))
                       (cons 'begin _%types192264%_)))))
              (let ((_%__match192640192641%_
                     (lambda (_%e192165192190%_
                              _%hd192164192193%_
                              _%tl192163192195%_
                              _%e192168192198%_
                              _%hd192167192201%_
                              _%tl192166192203%_
                              _%__splice192591192592%_
                              _%target192169192206%_
                              _%tl192171192208%_)
                       (letrec ((_%loop192172192211%_
                                 (lambda (_%hd192170192214%_
                                          _%id192176192216%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192170192214%_))
                                       (let ((_%e192173192219%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192170192214%_))))
                                         (let ((_%lp-tl192175192224%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192173192219%_)))
                                               (_%lp-hd192174192222%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192173192219%_))))
                                           (let ((__tmp193009
                                                  (cons _%lp-hd192174192222%_
                                                        _%id192176192216%_)))
                                             (declare (not safe))
                                             (_%loop192172192211%_
                                              _%lp-tl192175192224%_
                                              __tmp193009))))
                                       (let ((_%id192177192227%_
                                              (reverse _%id192176192216%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192166192203%_))
                                             (let ((_%e192180192230%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192166192203%_))))
                                               (let ((_%tl192178192235%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192180192230%_)))
                                                     (_%hd192179192233%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192180192230%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192178192235%_))
                                                     (_%__kont192589192590%_
                                                      _%id192177192227%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192147192185%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192147192185%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop192172192211%_
                            _%target192169192206%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx192585192586%_))
                    (let ((_%e192152192271%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx192585192586%_))))
                      (let ((_%tl192150192276%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192152192271%_)))
                            (_%hd192151192274%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192152192271%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192150192276%_))
                            (let ((_%e192155192279%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192150192276%_))))
                              (let ((_%tl192153192284%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192155192279%_)))
                                    (_%hd192154192282%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192155192279%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192154192282%_))
                                    (let ((_%e192158192287%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192154192282%_))))
                                      (let ((_%tl192156192292%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192158192287%_)))
                                            (_%hd192157192290%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192158192287%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192156192292%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192153192284%_))
                                                (let ((_%e192161192295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192153192284%_))))
                                                  (let ((_%tl192159192300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192161192295%_)))
                                                        (_%hd192160192298%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192161192295%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192159192300%_))
                                                        (_%__kont192587192588%_
                                                         _%hd192157192290%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192154192282%_))
                                                            (let ((_%__splice192591192592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192154192282%_ '0))))
                      (let ((_%tl192171192208%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192591192592%_ '1)))
                            (_%target192169192206%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192591192592%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192171192208%_))
                            (_%__match192640192641%_
                             _%e192152192271%_
                             _%hd192151192274%_
                             _%tl192150192276%_
                             _%e192155192279%_
                             _%hd192154192282%_
                             _%tl192153192284%_
                             _%__splice192591192592%_
                             _%target192169192206%_
                             _%tl192171192208%_)
                            (let ()
                              (declare (not safe))
                              (_%g192147192185%_)))))
                    (let () (declare (not safe)) (_%g192147192185%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192154192282%_))
                                                    (let ((_%__splice192591192592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192154192282%_
                                                              '0))))
                                                      (let ((_%tl192171192208%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice192591192592%_ '1)))
                    (_%target192169192206%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice192591192592%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192171192208%_))
                    (_%__match192640192641%_
                     _%e192152192271%_
                     _%hd192151192274%_
                     _%tl192150192276%_
                     _%e192155192279%_
                     _%hd192154192282%_
                     _%tl192153192284%_
                     _%__splice192591192592%_
                     _%target192169192206%_
                     _%tl192171192208%_)
                    (let () (declare (not safe)) (_%g192147192185%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192147192185%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192154192282%_))
                                                (let ((_%__splice192591192592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192154192282%_
                                                          '0))))
                                                  (let ((_%tl192171192208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192591192592%_
                                                            '1)))
                                                        (_%target192169192206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192591192592%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192171192208%_))
                                                        (_%__match192640192641%_
                                                         _%e192152192271%_
                                                         _%hd192151192274%_
                                                         _%tl192150192276%_
                                                         _%e192155192279%_
                                                         _%hd192154192282%_
                                                         _%tl192153192284%_
                                                         _%__splice192591192592%_
                                                         _%target192169192206%_
                                                         _%tl192171192208%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192147192185%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192147192185%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192154192282%_))
                                        (let ((_%__splice192591192592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192154192282%_
                                                  '0))))
                                          (let ((_%tl192171192208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192591192592%_
                                                    '1)))
                                                (_%target192169192206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192591192592%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192171192208%_))
                                                (_%__match192640192641%_
                                                 _%e192152192271%_
                                                 _%hd192151192274%_
                                                 _%tl192150192276%_
                                                 _%e192155192279%_
                                                 _%hd192154192282%_
                                                 _%tl192153192284%_
                                                 _%__splice192591192592%_
                                                 _%target192169192206%_
                                                 _%tl192171192208%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192147192185%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192147192185%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192147192185%_)))))
                    (let () (declare (not safe)) (_%g192147192185%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self191694%_ _%stx191695%_)
        (let* ((_%__stx192643192644%_ _%stx191695%_)
               (_%g191699191801%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192643192644%_)))))
          (let ((_%__kont192645192646%_
                 (lambda (_%L192091%_
                          _%L192092%_
                          _%L192093%_
                          _%L192094%_
                          _%L192095%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192094%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192093%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192092%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192091%_))
                                                 '())))))))
                (_%__kont192647192648%_
                 (lambda (_%L191917%_ _%L191918%_ _%L191919%_ _%L191920%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191919%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L191918%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L191917%_))
                                           (cons '#f '())))))))
                (_%__kont192649192650%_ (lambda () '(begin))))
            (let ((_%__match192778192779%_
                   (lambda (_%e191708191963%_
                            _%hd191707191966%_
                            _%tl191706191968%_
                            _%e191711191971%_
                            _%hd191710191974%_
                            _%tl191709191976%_
                            _%e191714191979%_
                            _%hd191713191982%_
                            _%tl191712191984%_
                            _%e191717191987%_
                            _%hd191716191990%_
                            _%tl191715191992%_
                            _%e191720191995%_
                            _%hd191719191998%_
                            _%tl191718192000%_
                            _%e191723192003%_
                            _%hd191722192006%_
                            _%tl191721192008%_
                            _%e191726192011%_
                            _%hd191725192014%_
                            _%tl191724192016%_
                            _%e191729192019%_
                            _%hd191728192022%_
                            _%tl191727192024%_
                            _%e191732192027%_
                            _%hd191731192030%_
                            _%tl191730192032%_
                            _%e191735192035%_
                            _%hd191734192038%_
                            _%tl191733192040%_
                            _%e191738192043%_
                            _%hd191737192046%_
                            _%tl191736192048%_
                            _%e191741192051%_
                            _%hd191740192054%_
                            _%tl191739192056%_
                            _%e191744192059%_
                            _%hd191743192062%_
                            _%tl191742192064%_
                            _%e191747192067%_
                            _%hd191746192070%_
                            _%tl191745192072%_
                            _%e191750192075%_
                            _%hd191749192078%_
                            _%tl191748192080%_
                            _%e191753192083%_
                            _%hd191752192086%_
                            _%tl191751192088%_)
                     (let ((_%L192091%_ _%hd191752192086%_)
                           (_%L192092%_ _%hd191743192062%_)
                           (_%L192093%_ _%hd191734192038%_)
                           (_%L192094%_ _%hd191725192014%_)
                           (_%L192095%_ _%hd191716191990%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192095%_
                              'bind-method!))
                           (_%__kont192645192646%_
                            _%L192091%_
                            _%L192092%_
                            _%L192093%_
                            _%L192094%_
                            _%L192095%_)
                           (_%__kont192649192650%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx192643192644%_))
                  (let ((_%e191708191963%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx192643192644%_))))
                    (let ((_%tl191706191968%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191708191963%_)))
                          (_%hd191707191966%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191708191963%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191706191968%_))
                          (let ((_%e191711191971%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191706191968%_))))
                            (let ((_%tl191709191976%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191711191971%_)))
                                  (_%hd191710191974%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191711191971%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191710191974%_))
                                  (let ((_%e191714191979%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191710191974%_))))
                                    (let ((_%tl191712191984%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191714191979%_)))
                                          (_%hd191713191982%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191714191979%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191713191982%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191713191982%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191712191984%_))
                                                  (let ((_%e191717191987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191712191984%_))))
                                                    (let ((_%tl191715191992%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191717191987%_)))
                                                          (_%hd191716191990%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191717191987%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191715191992%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191709191976%_))
                      (let ((_%e191720191995%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191709191976%_))))
                        (let ((_%tl191718192000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191720191995%_)))
                              (_%hd191719191998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191720191995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd191719191998%_))
                              (let ((_%e191723192003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd191719191998%_))))
                                (let ((_%tl191721192008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191723192003%_)))
                                      (_%hd191722192006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191723192003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd191722192006%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd191722192006%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191721192008%_))
                                              (let ((_%e191726192011%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191721192008%_))))
                                                (let ((_%tl191724192016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191726192011%_)))
                                                      (_%hd191725192014%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191726192011%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191724192016%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191718192000%_))
                                                          (let ((_%e191729192019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191718192000%_))))
                    (let ((_%tl191727192024%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191729192019%_)))
                          (_%hd191728192022%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191729192019%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd191728192022%_))
                          (let ((_%e191732192027%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd191728192022%_))))
                            (let ((_%tl191730192032%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191732192027%_)))
                                  (_%hd191731192030%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191732192027%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd191731192030%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd191731192030%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191730192032%_))
                                          (let ((_%e191735192035%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191730192032%_))))
                                            (let ((_%tl191733192040%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191735192035%_)))
                                                  (_%hd191734192038%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191735192035%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191733192040%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191727192024%_))
                                                      (let ((_%e191738192043%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191727192024%_))))
                (let ((_%tl191736192048%_
                       (let () (declare (not safe)) (##cdr _%e191738192043%_)))
                      (_%hd191737192046%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191738192043%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd191737192046%_))
                      (let ((_%e191741192051%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd191737192046%_))))
                        (let ((_%tl191739192056%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191741192051%_)))
                              (_%hd191740192054%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191741192051%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd191740192054%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd191740192054%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191739192056%_))
                                      (let ((_%e191744192059%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191739192056%_))))
                                        (let ((_%tl191742192064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191744192059%_)))
                                              (_%hd191743192062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191744192059%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191742192064%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191736192048%_))
                                                  (let ((_%e191747192067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191736192048%_))))
                                                    (let ((_%tl191745192072%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191747192067%_)))
                                                          (_%hd191746192070%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191747192067%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191746192070%_))
                                                          (let ((_%e191750192075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191746192070%_))))
                    (let ((_%tl191748192080%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191750192075%_)))
                          (_%hd191749192078%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191750192075%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd191749192078%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd191749192078%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191748192080%_))
                                  (let ((_%e191753192083%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191748192080%_))))
                                    (let ((_%tl191751192088%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191753192083%_)))
                                          (_%hd191752192086%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191753192083%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191751192088%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191745192072%_))
                                              (_%__match192778192779%_
                                               _%e191708191963%_
                                               _%hd191707191966%_
                                               _%tl191706191968%_
                                               _%e191711191971%_
                                               _%hd191710191974%_
                                               _%tl191709191976%_
                                               _%e191714191979%_
                                               _%hd191713191982%_
                                               _%tl191712191984%_
                                               _%e191717191987%_
                                               _%hd191716191990%_
                                               _%tl191715191992%_
                                               _%e191720191995%_
                                               _%hd191719191998%_
                                               _%tl191718192000%_
                                               _%e191723192003%_
                                               _%hd191722192006%_
                                               _%tl191721192008%_
                                               _%e191726192011%_
                                               _%hd191725192014%_
                                               _%tl191724192016%_
                                               _%e191729192019%_
                                               _%hd191728192022%_
                                               _%tl191727192024%_
                                               _%e191732192027%_
                                               _%hd191731192030%_
                                               _%tl191730192032%_
                                               _%e191735192035%_
                                               _%hd191734192038%_
                                               _%tl191733192040%_
                                               _%e191738192043%_
                                               _%hd191737192046%_
                                               _%tl191736192048%_
                                               _%e191741192051%_
                                               _%hd191740192054%_
                                               _%tl191739192056%_
                                               _%e191744192059%_
                                               _%hd191743192062%_
                                               _%tl191742192064%_
                                               _%e191747192067%_
                                               _%hd191746192070%_
                                               _%tl191745192072%_
                                               _%e191750192075%_
                                               _%hd191749192078%_
                                               _%tl191748192080%_
                                               _%e191753192083%_
                                               _%hd191752192086%_
                                               _%tl191751192088%_)
                                              (_%__kont192649192650%_))
                                          (_%__kont192649192650%_))))
                                  (_%__kont192649192650%_))
                              (_%__kont192649192650%_))
                          (_%__kont192649192650%_))))
                  (_%__kont192649192650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191736192048%_))
                                                      (if (let ((__tmp193010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193010 'bind-method!))
                  (let ((_%L191917%_ _%hd191743192062%_)
                        (_%L191918%_ _%hd191734192038%_)
                        (_%L191919%_ _%hd191725192014%_)
                        (_%L191920%_ _%hd191716191990%_))
                    (_%__kont192647192648%_
                     _%L191917%_
                     _%L191918%_
                     _%L191919%_
                     _%L191920%_))
                  (_%__kont192649192650%_))
              (_%__kont192649192650%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192649192650%_))))
                                      (_%__kont192649192650%_))
                                  (_%__kont192649192650%_))
                              (_%__kont192649192650%_))))
                      (_%__kont192649192650%_))))
              (_%__kont192649192650%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192649192650%_))))
                                          (_%__kont192649192650%_))
                                      (_%__kont192649192650%_))
                                  (_%__kont192649192650%_))))
                          (_%__kont192649192650%_))))
                  (_%__kont192649192650%_))
              (_%__kont192649192650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192649192650%_))
                                          (_%__kont192649192650%_))
                                      (_%__kont192649192650%_))))
                              (_%__kont192649192650%_))))
                      (_%__kont192649192650%_))
                  (_%__kont192649192650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192649192650%_))
                                              (_%__kont192649192650%_))
                                          (_%__kont192649192650%_))))
                                  (_%__kont192649192650%_))))
                          (_%__kont192649192650%_))))
                  (_%__kont192649192650%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self191518%_ _%stx191519%_)
        (let* ((_%__stx192887192888%_ _%stx191519%_)
               (_%g191522191562%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192887192888%_)))))
          (let ((_%__kont192889192890%_
                 (lambda (_%L191668%_ _%L191669%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191669%_))
                               (cons _%L191668%_ '())))))
                (_%__kont192891192892%_
                 (lambda (_%L191591%_ _%L191592%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx192887192888%_))
                (let ((_%e191528191612%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx192887192888%_))))
                  (let ((_%tl191526191617%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191528191612%_)))
                        (_%hd191527191615%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191528191612%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl191526191617%_))
                        (let ((_%e191531191620%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191526191617%_))))
                          (let ((_%tl191529191625%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191531191620%_)))
                                (_%hd191530191623%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191531191620%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd191530191623%_))
                                (let ((_%e191534191628%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd191530191623%_))))
                                  (let ((_%tl191532191633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191534191628%_)))
                                        (_%hd191533191631%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191534191628%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd191533191631%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd191533191631%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191532191633%_))
                                                (let ((_%e191537191636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191532191633%_))))
                                                  (let ((_%tl191535191641%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191537191636%_)))
                                                        (_%hd191536191639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191537191636%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191535191641%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191529191625%_))
                                                            (let ((_%e191540191644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191529191625%_))))
                      (let ((_%tl191538191649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191540191644%_)))
                            (_%hd191539191647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191540191644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191539191647%_))
                            (let ((_%e191543191652%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191539191647%_))))
                              (let ((_%tl191541191657%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191543191652%_)))
                                    (_%hd191542191655%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191543191652%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191542191655%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191542191655%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191541191657%_))
                                            (let ((_%e191546191660%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191541191657%_))))
                                              (let ((_%tl191544191665%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191546191660%_)))
                                                    (_%hd191545191663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191546191660%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191544191665%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191538191649%_))
                                                        (_%__kont192889192890%_
                                                         _%hd191545191663%_
                                                         _%hd191536191639%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191522191562%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191538191649%_))
                                                        (_%__kont192891192892%_
                                                         _%hd191539191647%_
                                                         _%hd191530191623%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191522191562%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191538191649%_))
                                                (_%__kont192891192892%_
                                                 _%hd191539191647%_
                                                 _%hd191530191623%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191522191562%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191538191649%_))
                                            (_%__kont192891192892%_
                                             _%hd191539191647%_
                                             _%hd191530191623%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191522191562%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191538191649%_))
                                        (_%__kont192891192892%_
                                         _%hd191539191647%_
                                         _%hd191530191623%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g191522191562%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191538191649%_))
                                (_%__kont192891192892%_
                                 _%hd191539191647%_
                                 _%hd191530191623%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g191522191562%_))))))
                    (let () (declare (not safe)) (_%g191522191562%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl191529191625%_))
                    (let ((_%e191557191583%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191529191625%_))))
                      (let ((_%tl191555191588%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191557191583%_)))
                            (_%hd191556191586%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191557191583%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl191555191588%_))
                            (_%__kont192891192892%_
                             _%hd191556191586%_
                             _%hd191530191623%_)
                            (let ()
                              (declare (not safe))
                              (_%g191522191562%_)))))
                    (let () (declare (not safe)) (_%g191522191562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl191529191625%_))
                                                    (let ((_%e191557191583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl191529191625%_))))
                                                      (let ((_%tl191555191588%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e191557191583%_)))
                    (_%hd191556191586%_
                     (let () (declare (not safe)) (##car _%e191557191583%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl191555191588%_))
                    (_%__kont192891192892%_
                     _%hd191556191586%_
                     _%hd191530191623%_)
                    (let () (declare (not safe)) (_%g191522191562%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191522191562%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191529191625%_))
                                                (let ((_%e191557191583%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191529191625%_))))
                                                  (let ((_%tl191555191588%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191557191583%_)))
                                                        (_%hd191556191586%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191557191583%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191555191588%_))
                                                        (_%__kont192891192892%_
                                                         _%hd191556191586%_
                                                         _%hd191530191623%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191522191562%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191522191562%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191529191625%_))
                                            (let ((_%e191557191583%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191529191625%_))))
                                              (let ((_%tl191555191588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191557191583%_)))
                                                    (_%hd191556191586%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191557191583%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191555191588%_))
                                                    (_%__kont192891192892%_
                                                     _%hd191556191586%_
                                                     _%hd191530191623%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191522191562%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g191522191562%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191529191625%_))
                                    (let ((_%e191557191583%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191529191625%_))))
                                      (let ((_%tl191555191588%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191557191583%_)))
                                            (_%hd191556191586%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191557191583%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191555191588%_))
                                            (_%__kont192891192892%_
                                             _%hd191556191586%_
                                             _%hd191530191623%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191522191562%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191522191562%_))))))
                        (let () (declare (not safe)) (_%g191522191562%_)))))
                (let () (declare (not safe)) (_%g191522191562%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191505%_)
        (let ()
          (let ((_%self191508%_ _%self191505%_))
            (let ()
              (cons '@alias
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191508%_
                             '1
                             '#f
                             '#f))
                          '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191278%_)
        (let ()
          (let ((_%self191281%_ _%self191278%_))
            (let ()
              (let* ((_%self191290191306%_ _%self191281%_)
                     (_%E191292191310%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self191290191306%_
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
                     (_%K191293191325%_
                      (lambda (_%methods191313%_
                               _%metaclass191314%_
                               _%system?191315%_
                               _%final?191316%_
                               _%struct?191317%_
                               _%constructor191318%_
                               _%fields191319%_
                               _%slots191320%_
                               _%precendence-list191321%_
                               _%super191322%_
                               _%id191323%_)
                        (cons '@class
                              (cons _%id191323%_
                                    (cons _%super191322%_
                                          (cons _%precendence-list191321%_
                                                (cons _%slots191320%_
                                                      (cons _%fields191319%_
                                                            (cons _%constructor191318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%struct?191317%_
                                (cons _%final?191316%_
                                      (cons _%system?191315%_
                                            (cons _%metaclass191314%_
                                                  (cons (if _%methods191313%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (hash->list
                                                               _%methods191313%_))
                                                            '#f)
                                                        '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (if '#t
                    (let* ((_%e191294191328%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '1
                               '#f
                               '#f)))
                           (_%id191331%_ _%e191294191328%_)
                           (_%e191295191333%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '2
                               '#f
                               '#f)))
                           (_%super191336%_ _%e191295191333%_)
                           (_%e191296191338%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '3
                               '#f
                               '#f)))
                           (_%precendence-list191341%_ _%e191296191338%_)
                           (_%e191297191343%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '4
                               '#f
                               '#f)))
                           (_%slots191346%_ _%e191297191343%_)
                           (_%e191298191348%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '5
                               '#f
                               '#f)))
                           (_%fields191351%_ _%e191298191348%_)
                           (_%e191299191353%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '6
                               '#f
                               '#f)))
                           (_%constructor191356%_ _%e191299191353%_)
                           (_%e191300191358%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '7
                               '#f
                               '#f)))
                           (_%struct?191361%_ _%e191300191358%_)
                           (_%e191301191363%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '8
                               '#f
                               '#f)))
                           (_%final?191366%_ _%e191301191363%_)
                           (_%e191302191368%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '9
                               '#f
                               '#f)))
                           (_%system?191371%_ _%e191302191368%_)
                           (_%e191303191373%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '10
                               '#f
                               '#f)))
                           (_%metaclass191376%_ _%e191303191373%_)
                           (_%e191304191378%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191290191306%_
                               '11
                               '#f
                               '#f)))
                           (_%methods191381%_ _%e191304191378%_))
                      (declare (not safe))
                      (_%K191293191325%_
                       _%methods191381%_
                       _%metaclass191376%_
                       _%system?191371%_
                       _%final?191366%_
                       _%struct?191361%_
                       _%constructor191356%_
                       _%fields191351%_
                       _%slots191346%_
                       _%precendence-list191341%_
                       _%super191336%_
                       _%id191331%_))
                    (let () (declare (not safe)) (_%E191292191310%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191143%_)
        (let ()
          (let ((_%self191146%_ _%self191143%_))
            (let ()
              (cons '@predicate
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191146%_
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
      (lambda (_%self191008%_)
        (let ()
          (let ((_%self191011%_ _%self191008%_))
            (let ()
              (cons '@constructor
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self191011%_
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
      (lambda (_%self190873%_)
        (let ()
          (let ((_%self190876%_ _%self190873%_))
            (let ()
              (cons '@accessor
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190876%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190876%_
                                   '3
                                   '#f
                                   '#f))
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self190876%_
                                         '4
                                         '#f
                                         '#f))
                                      '())))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self190738%_)
        (let ()
          (let ((_%self190741%_ _%self190738%_))
            (let ()
              (cons '@mutator
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190741%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190741%_
                                   '3
                                   '#f
                                   '#f))
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%self190741%_
                                         '4
                                         '#f
                                         '#f))
                                      '())))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self190603%_)
        (let ()
          (let ((_%self190606%_ _%self190603%_))
            (let ()
              (cons '@interface
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190606%_
                             '1
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190606%_
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
      (lambda (_%self190416%_)
        (let ()
          (let ((_%self190419%_ _%self190416%_))
            (let ()
              (let* ((_%self190428190437%_ _%self190419%_)
                     (_%E190430190441%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self190428190437%_
                                 '((!lambda _ signature arity dispatch))))
                        '#!void))
                     (_%K190431190460%_
                      (lambda (_%dispatch190444%_
                               _%arity190445%_
                               _%signature190446%_)
                        (if _%signature190446%_
                            (let ((_%signature190448%_ _%signature190446%_))
                              (cons '@lambda
                                    (cons _%arity190445%_
                                          (cons _%dispatch190444%_
                                                (cons 'signature:
                                                      (cons (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%signature190448%_
                                   '1
                                   '#f
                                   '#f))
                                (cons 'effect:
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%signature190448%_
                                               '2
                                               '#f
                                               '#f))
                                            (cons 'arguments:
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%signature190448%_
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (cons 'unchecked:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature190448%_
                               '4
                               '#f
                               '#f))
                            '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (cons '@lambda
                                  (cons _%arity190445%_
                                        (cons _%dispatch190444%_ '())))))))
                (if '#t
                    (let* ((_%e190432190463%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190428190437%_
                               '1
                               '#f
                               '#f)))
                           (_%e190433190466%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190428190437%_
                               '2
                               '#f
                               '#f)))
                           (_%signature190469%_ _%e190433190466%_)
                           (_%e190434190471%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190428190437%_
                               '3
                               '#f
                               '#f)))
                           (_%arity190474%_ _%e190434190471%_)
                           (_%e190435190476%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190428190437%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch190479%_ _%e190435190476%_))
                      (declare (not safe))
                      (_%K190431190460%_
                       _%dispatch190479%_
                       _%arity190474%_
                       _%signature190469%_))
                    (let () (declare (not safe)) (_%E190430190441%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190277%_)
        (let ()
          (let ((_%self190280%_ _%self190277%_))
            (let ()
              (letrec ((_%clause-e190290%_
                        (lambda (_%clause190292%_)
                          (cdr (let ((__method192975
                                      (let ()
                                        (declare (not safe))
                                        (__method-ref
                                         _%clause190292%_
                                         'typedecl))))
                                 (if __method192975
                                     (__method192975 _%clause190292%_)
                                     (let ()
                                       (declare (not safe))
                                       (error '"Missing method"
                                              _%clause190292%_
                                              'typedecl))))))))
                (cons '@case-lambda
                      (map _%clause-e190290%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%self190280%_
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
      (lambda (_%self190142%_)
        (let ()
          (let ((_%self190145%_ _%self190142%_))
            (let ()
              (cons '@kw-lambda
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190145%_
                             '3
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190145%_
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
      (lambda (_%self190007%_)
        (let ()
          (let ((_%self190010%_ _%self190007%_))
            (let ()
              (cons '@kw-lambda-dispatch
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self190010%_
                             '3
                             '#f
                             '#f))
                          (cons (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%self190010%_
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
      (lambda (_%self189872%_)
        (let ()
          (let ((_%self189875%_ _%self189872%_))
            (let ()
              (cons '@primitive-predicate
                    (cons (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self189875%_
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
