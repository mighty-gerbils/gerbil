(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712147684)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp193041
                   (let ((__obj193035
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj193035)
                     __obj193035)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp193041)))))
    (define gxc#optimize!
      (lambda (_%ctx192644%_)
        (let ((__tmp193044
               (lambda ()
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-builtin-ssxi _%ctx192644%_))
                 (let ()
                   (declare (not safe))
                   (gxc#optimizer-load-ssxi-deps _%ctx192644%_))
                 (let ((__tmp193046
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp193045
                        (##structure-ref
                         _%ctx192644%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp193046 __tmp193045 '#t))
                 (let ((_%code192647%_
                        (let ((__tmp193047
                               (##structure-ref
                                _%ctx192644%_
                                '11
                                gx#module-context::t
                                '#f)))
                          (declare (not safe))
                          (gxc#optimize-source __tmp193047))))
                   (##structure-set!
                    _%ctx192644%_
                    _%code192647%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp193043 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp193042 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193044
           gxc#current-compile-mutators
           __tmp193043
           gxc#current-compile-local-type
           __tmp193042))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx192630%_)
        (letrec ((_%load-it!192632%_
                  (lambda (_%id192642%_)
                    (if (let ((__tmp193048
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp193048 _%id192642%_))
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi-by-id _%id192642%_))
                          (let ((__tmp193049
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp193049 _%id192642%_ '#t)))))))
          (let* ((_%modid192634%_
                  (##structure-ref
                   _%ctx192630%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str192636%_ (symbol->string _%modid192634%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str192636%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str192636%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192632%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!192632%_
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
      (lambda (_%ctx192567%_)
        (letrec* ((_%deps192569%_
                   (let* ((_%imports192620%_
                           (##structure-ref
                            _%ctx192567%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e192622%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx192567%_))))
                     (if _%$e192622%_
                         ((lambda (_%g192624192626%_)
                            (cons _%g192624192626%_ _%imports192620%_))
                          _%$e192622%_)
                         (let () _%imports192620%_)))))
          (let _%lp192571%_ ((_%rest192573%_ _%deps192569%_))
            (let* ((_%rest192574192582%_ _%rest192573%_)
                   (_%else192576192590%_ (lambda () '#!void))
                   (_%K192578192608%_
                    (lambda (_%rest192593%_ _%hd192594%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd192594%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp193051
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp193050
                                       (##structure-ref
                                        _%hd192594%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp193051 __tmp193050))
                                '#!void
                                (begin
                                  (let ((_%$e192597%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd192594%_))))
                                    (if _%$e192597%_
                                        ((lambda (_%pre192600%_)
                                           (let ((__tmp193052
                                                  (cons _%pre192600%_
                                                        (##structure-ref
                                                         _%hd192594%_
                                                         '8
                                                         gx#module-context::t
                                                         '#f))))
                                             (declare (not safe))
                                             (_%lp192571%_ __tmp193052)))
                                         _%$e192597%_)
                                        (let ((__tmp193053
                                               (##structure-ref
                                                _%hd192594%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                          (declare (not safe))
                                          (_%lp192571%_ __tmp193053))))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#optimizer-load-ssxi _%hd192594%_))))
                            (let ()
                              (declare (not safe))
                              (_%lp192571%_ _%rest192593%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd192594%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp193055
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp193054
                                           (##structure-ref
                                            _%hd192594%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp193055 __tmp193054))
                                    '#!void
                                    (begin
                                      (let ((__tmp193056
                                             (##structure-ref
                                              _%hd192594%_
                                              '7
                                              gx#prelude-context::t
                                              '#f)))
                                        (declare (not safe))
                                        (_%lp192571%_ __tmp193056))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#optimizer-load-ssxi
                                         _%hd192594%_))))
                                (let ()
                                  (declare (not safe))
                                  (_%lp192571%_ _%rest192593%_)))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd192594%_
                                     'gx#module-import::t))
                                  (let ((__tmp193057
                                         (cons (##direct-structure-ref
                                                _%hd192594%_
                                                '1
                                                gx#module-import::t
                                                '#f)
                                               _%rest192593%_)))
                                    (declare (not safe))
                                    (_%lp192571%_ __tmp193057))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd192594%_
                                         'gx#module-export::t))
                                      (let ((__tmp193058
                                             (cons (##direct-structure-ref
                                                    _%hd192594%_
                                                    '1
                                                    gx#module-export::t
                                                    '#f)
                                                   _%rest192593%_)))
                                        (declare (not safe))
                                        (_%lp192571%_ __tmp193058))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd192594%_
                                             'gx#import-set::t))
                                          (let ((__tmp193059
                                                 (cons (##direct-structure-ref
                                                        _%hd192594%_
                                                        '1
                                                        gx#import-set::t
                                                        '#f)
                                                       _%rest192593%_)))
                                            (declare (not safe))
                                            (_%lp192571%_ __tmp193059))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd192594%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest192574192582%_))
                  (let ((_%hd192579192611%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest192574192582%_)))
                        (_%tl192580192613%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest192574192582%_))))
                    (let* ((_%hd192616%_ _%hd192579192611%_)
                           (_%rest192618%_ _%tl192580192613%_))
                      (declare (not safe))
                      (_%K192578192608%_ _%rest192618%_ _%hd192616%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx192547%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx192547%_
                    'gx#module-context::t))
                 (let ((__tmp193060
                        (##structure-ref
                         _%ctx192547%_
                         '7
                         gx#module-context::t
                         '#f)))
                   (declare (not safe))
                   (list? __tmp193060)))
            '#!void
            (let* ((_%ht192549%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id192551%_
                    (##structure-ref
                     _%ctx192547%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod192553%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht192549%_ _%id192551%_)))
                   (_%$e192556%_ _%mod192553%_))
              (if _%$e192556%_
                  _%$e192556%_
                  (let* ((_%mod192559%_
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-import-ssxi _%ctx192547%_)))
                         (_%val192564%_
                          (let ((_%$e192561%_ _%mod192559%_))
                            (if _%$e192561%_ _%$e192561%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht192549%_ _%id192551%_ _%val192564%_))
                    _%val192564%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx192545%_)
        (if (##structure-ref _%ctx192545%_ '1 gx#expander-context::t '#f)
            (let ((__tmp193061
                   (##structure-ref
                    _%ctx192545%_
                    '1
                    gx#expander-context::t
                    '#f)))
              (declare (not safe))
              (gxc#optimizer-import-ssxi-by-id __tmp193061))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id192522%_)
        (letrec ((_%catch-e192524%_
                  (lambda (_%exn192543%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn192543%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn192543%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id192522%_))))
                    '#f))
                 (_%import-e192525%_
                  (lambda ()
                    (let* ((_%str-id192528%_
                            (let ((__tmp193062
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id192522%_))))
                              (declare (not safe))
                              (##string-append __tmp193062 '".ssxi")))
                           (_%artefact-path192536%_
                            (let ((_%odir192529192531%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir192529192531%_
                                  (let ((_%odir192534%_ _%odir192529192531%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id192528%_
                                        '".ss"))
                                     _%odir192534%_))
                                  '#f)))
                           (_%library-path192538%_
                            (let ((__tmp193063
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id192528%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp193063)))
                           (_%ssxi-path192540%_
                            (if (and _%artefact-path192536%_
                                     (file-exists? _%artefact-path192536%_))
                                _%artefact-path192536%_
                                _%library-path192538%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path192540%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path192540%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e192524%_ _%import-e192525%_)))))
    (define gxc#optimize-source
      (lambda (_%stx192513%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx192513%_))
        (let () (declare (not safe)) (gxc#apply-collect-methods _%stx192513%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx192513%_))
        (let* ((_%stx192515%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx192513%_)))
               (_%stx192517%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx192515%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx192517%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx192517%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx192517%_))
          (let ((_%stx192520%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx192517%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx192520%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp193065 (list gxc#::generate-runtime-empty::t))
            (__tmp193064 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp193065
         '()
         __tmp193064
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args192510%_
        (apply make-instance gxc#::generate-ssxi::t _%$args192510%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp193066
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
        (__make-promise __tmp193066)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx192502%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self192505%_
                (let ((__obj193037
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj193037))
               (__tmp193067
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self192505%_ _%stx192502%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp193067
           gxc#current-compile-method
           _%self192505%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self192462%_ _%stx192463%_)
        (let* ((_%g192465192475%_
                (lambda (_%g192466192472%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192466192472%_))))
               (_%g192464192499%_
                (lambda (_%g192466192478%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192466192478%_))
                      (let ((_%e192470192480%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192466192478%_))))
                        (let ((_%hd192469192483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192470192480%_)))
                              (_%tl192468192485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192470192480%_))))
                          ((lambda (_%L192488%_)
                             (let ((__tmp193070
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self192462%_
                                         _%stx192463%_))))
                                   (__tmp193068
                                    (let ((__tmp193069
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp193069 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp193070
                                gx#current-expander-phi
                                __tmp193068)))
                           _%tl192468192485%_)))
                      (let ()
                        (declare (not safe))
                        (_%g192465192475%_ _%g192466192478%_))))))
          (declare (not safe))
          (_%g192464192499%_ _%stx192463%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self192401%_ _%stx192402%_)
        (let* ((_%g192404192418%_
                (lambda (_%g192405192415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g192405192415%_))))
               (_%g192403192459%_
                (lambda (_%g192405192421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g192405192421%_))
                      (let ((_%e192410192423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g192405192421%_))))
                        (let ((_%hd192409192426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e192410192423%_)))
                              (_%tl192408192428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e192410192423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl192408192428%_))
                              (let ((_%e192413192431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl192408192428%_))))
                                (let ((_%hd192412192434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e192413192431%_)))
                                      (_%tl192411192436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e192413192431%_))))
                                  ((lambda (_%L192439%_ _%L192440%_)
                                     (let* ((_%ctx192453%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L192440%_)))
                                            (_%code192455%_
                                             (##structure-ref
                                              _%ctx192453%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp193071
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self192401%_
                                                  _%code192455%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp193071
                                        gx#current-expander-context
                                        _%ctx192453%_)))
                                   _%tl192411192436%_
                                   _%hd192412192434%_)))
                              (let ()
                                (declare (not safe))
                                (_%g192404192418%_ _%g192405192421%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g192404192418%_ _%g192405192421%_))))))
          (declare (not safe))
          (_%g192403192459%_ _%stx192402%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self192206%_ _%stx192207%_)
        (letrec ((_%generate-e192209%_
                  (lambda (_%id192386%_)
                    (let* ((_%sym192388%_
                            (if (let ((__tmp193072
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp193072))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id192386%_))
                                '#f))
                           (_%$e192390%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym192388%_))))
                      (if _%$e192390%_
                          ((lambda (_%klass192393%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym192388%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym192388%_
                                                     (cons (let ((__method193038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass192393%_ 'typedecl))))
                     (if __method193038
                         (__method193038 _%klass192393%_)
                         (let ()
                           (declare (not safe))
                           (error '"Missing method"
                                  _%klass192393%_
                                  'typedecl))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym192388%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym192388%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e192390%_)
                          (let ((_%$e192395%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym192388%_))))
                            (if _%$e192395%_
                                ((lambda (_%type192398%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym192388%_
                                      '" "
                                      _%type192398%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type192398%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym192388%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym192388%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type192398%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym192388%_
                                                   (cons (let ((__method193039
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type192398%_ 'typedecl))))
                   (if __method193039
                       (__method193039 _%type192398%_)
                       (let ()
                         (declare (not safe))
                         (error '"Missing method" _%type192398%_ 'typedecl))))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e192395%_)
                                (let () '(begin)))))))))
          (let* ((_%__stx192650192651%_ _%stx192207%_)
                 (_%g192212192250%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx192650192651%_)))))
            (let ((_%__kont192652192653%_
                   (lambda (_%L192368%_)
                     (let ()
                       (declare (not safe))
                       (_%generate-e192209%_ _%L192368%_))))
                  (_%__kont192654192655%_
                   (lambda (_%L192303%_)
                     (let ((_%types192329%_
                            (map _%generate-e192209%_
                                 (let ((__tmp193073
                                        (lambda (_%g192321192324%_
                                                 _%g192322192326%_)
                                          (cons _%g192321192324%_
                                                _%g192322192326%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp193073 '() _%L192303%_)))))
                       (cons 'begin _%types192329%_)))))
              (let ((_%__match192705192706%_
                     (lambda (_%e192230192255%_
                              _%hd192229192258%_
                              _%tl192228192260%_
                              _%e192233192263%_
                              _%hd192232192266%_
                              _%tl192231192268%_
                              _%__splice192656192657%_
                              _%target192234192271%_
                              _%tl192236192273%_)
                       (letrec ((_%loop192237192276%_
                                 (lambda (_%hd192235192279%_
                                          _%id192241192281%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd192235192279%_))
                                       (let ((_%e192238192284%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd192235192279%_))))
                                         (let ((_%lp-tl192240192289%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e192238192284%_)))
                                               (_%lp-hd192239192287%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e192238192284%_))))
                                           (let ((__tmp193074
                                                  (cons _%lp-hd192239192287%_
                                                        _%id192241192281%_)))
                                             (declare (not safe))
                                             (_%loop192237192276%_
                                              _%lp-tl192240192289%_
                                              __tmp193074))))
                                       (let ((_%id192242192292%_
                                              (reverse _%id192241192281%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl192231192268%_))
                                             (let ((_%e192245192295%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl192231192268%_))))
                                               (let ((_%tl192243192300%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e192245192295%_)))
                                                     (_%hd192244192298%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e192245192295%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl192243192300%_))
                                                     (_%__kont192654192655%_
                                                      _%id192242192292%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g192212192250%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g192212192250%_))))))))
                         (let ()
                           (declare (not safe))
                           (_%loop192237192276%_
                            _%target192234192271%_
                            '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx192650192651%_))
                    (let ((_%e192217192336%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx192650192651%_))))
                      (let ((_%tl192215192341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e192217192336%_)))
                            (_%hd192216192339%_
                             (let ()
                               (declare (not safe))
                               (##car _%e192217192336%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl192215192341%_))
                            (let ((_%e192220192344%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl192215192341%_))))
                              (let ((_%tl192218192349%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e192220192344%_)))
                                    (_%hd192219192347%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e192220192344%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd192219192347%_))
                                    (let ((_%e192223192352%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd192219192347%_))))
                                      (let ((_%tl192221192357%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e192223192352%_)))
                                            (_%hd192222192355%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e192223192352%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl192221192357%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl192218192349%_))
                                                (let ((_%e192226192360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl192218192349%_))))
                                                  (let ((_%tl192224192365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e192226192360%_)))
                                                        (_%hd192225192363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e192226192360%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192224192365%_))
                                                        (_%__kont192652192653%_
                                                         _%hd192222192355%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd192219192347%_))
                                                            (let ((_%__splice192656192657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd192219192347%_ '0))))
                      (let ((_%tl192236192273%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192656192657%_ '1)))
                            (_%target192234192271%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice192656192657%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl192236192273%_))
                            (_%__match192705192706%_
                             _%e192217192336%_
                             _%hd192216192339%_
                             _%tl192215192341%_
                             _%e192220192344%_
                             _%hd192219192347%_
                             _%tl192218192349%_
                             _%__splice192656192657%_
                             _%target192234192271%_
                             _%tl192236192273%_)
                            (let ()
                              (declare (not safe))
                              (_%g192212192250%_)))))
                    (let () (declare (not safe)) (_%g192212192250%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd192219192347%_))
                                                    (let ((_%__splice192656192657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd192219192347%_
                                                              '0))))
                                                      (let ((_%tl192236192273%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice192656192657%_ '1)))
                    (_%target192234192271%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice192656192657%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl192236192273%_))
                    (_%__match192705192706%_
                     _%e192217192336%_
                     _%hd192216192339%_
                     _%tl192215192341%_
                     _%e192220192344%_
                     _%hd192219192347%_
                     _%tl192218192349%_
                     _%__splice192656192657%_
                     _%target192234192271%_
                     _%tl192236192273%_)
                    (let () (declare (not safe)) (_%g192212192250%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g192212192250%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd192219192347%_))
                                                (let ((_%__splice192656192657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd192219192347%_
                                                          '0))))
                                                  (let ((_%tl192236192273%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192656192657%_
                                                            '1)))
                                                        (_%target192234192271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice192656192657%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl192236192273%_))
                                                        (_%__match192705192706%_
                                                         _%e192217192336%_
                                                         _%hd192216192339%_
                                                         _%tl192215192341%_
                                                         _%e192220192344%_
                                                         _%hd192219192347%_
                                                         _%tl192218192349%_
                                                         _%__splice192656192657%_
                                                         _%target192234192271%_
                                                         _%tl192236192273%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g192212192250%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192212192250%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd192219192347%_))
                                        (let ((_%__splice192656192657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd192219192347%_
                                                  '0))))
                                          (let ((_%tl192236192273%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192656192657%_
                                                    '1)))
                                                (_%target192234192271%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice192656192657%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl192236192273%_))
                                                (_%__match192705192706%_
                                                 _%e192217192336%_
                                                 _%hd192216192339%_
                                                 _%tl192215192341%_
                                                 _%e192220192344%_
                                                 _%hd192219192347%_
                                                 _%tl192218192349%_
                                                 _%__splice192656192657%_
                                                 _%target192234192271%_
                                                 _%tl192236192273%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g192212192250%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g192212192250%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g192212192250%_)))))
                    (let () (declare (not safe)) (_%g192212192250%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self191759%_ _%stx191760%_)
        (let* ((_%__stx192708192709%_ _%stx191760%_)
               (_%g191764191866%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192708192709%_)))))
          (let ((_%__kont192710192711%_
                 (lambda (_%L192156%_
                          _%L192157%_
                          _%L192158%_
                          _%L192159%_
                          _%L192160%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L192159%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L192158%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L192157%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L192156%_))
                                                 '())))))))
                (_%__kont192712192713%_
                 (lambda (_%L191982%_ _%L191983%_ _%L191984%_ _%L191985%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191984%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L191983%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L191982%_))
                                           (cons '#f '())))))))
                (_%__kont192714192715%_ (lambda () '(begin))))
            (let ((_%__match192843192844%_
                   (lambda (_%e191773192028%_
                            _%hd191772192031%_
                            _%tl191771192033%_
                            _%e191776192036%_
                            _%hd191775192039%_
                            _%tl191774192041%_
                            _%e191779192044%_
                            _%hd191778192047%_
                            _%tl191777192049%_
                            _%e191782192052%_
                            _%hd191781192055%_
                            _%tl191780192057%_
                            _%e191785192060%_
                            _%hd191784192063%_
                            _%tl191783192065%_
                            _%e191788192068%_
                            _%hd191787192071%_
                            _%tl191786192073%_
                            _%e191791192076%_
                            _%hd191790192079%_
                            _%tl191789192081%_
                            _%e191794192084%_
                            _%hd191793192087%_
                            _%tl191792192089%_
                            _%e191797192092%_
                            _%hd191796192095%_
                            _%tl191795192097%_
                            _%e191800192100%_
                            _%hd191799192103%_
                            _%tl191798192105%_
                            _%e191803192108%_
                            _%hd191802192111%_
                            _%tl191801192113%_
                            _%e191806192116%_
                            _%hd191805192119%_
                            _%tl191804192121%_
                            _%e191809192124%_
                            _%hd191808192127%_
                            _%tl191807192129%_
                            _%e191812192132%_
                            _%hd191811192135%_
                            _%tl191810192137%_
                            _%e191815192140%_
                            _%hd191814192143%_
                            _%tl191813192145%_
                            _%e191818192148%_
                            _%hd191817192151%_
                            _%tl191816192153%_)
                     (let ((_%L192156%_ _%hd191817192151%_)
                           (_%L192157%_ _%hd191808192127%_)
                           (_%L192158%_ _%hd191799192103%_)
                           (_%L192159%_ _%hd191790192079%_)
                           (_%L192160%_ _%hd191781192055%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L192160%_
                              'bind-method!))
                           (_%__kont192710192711%_
                            _%L192156%_
                            _%L192157%_
                            _%L192158%_
                            _%L192159%_
                            _%L192160%_)
                           (_%__kont192714192715%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx192708192709%_))
                  (let ((_%e191773192028%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx192708192709%_))))
                    (let ((_%tl191771192033%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191773192028%_)))
                          (_%hd191772192031%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191773192028%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl191771192033%_))
                          (let ((_%e191776192036%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl191771192033%_))))
                            (let ((_%tl191774192041%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191776192036%_)))
                                  (_%hd191775192039%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191776192036%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd191775192039%_))
                                  (let ((_%e191779192044%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd191775192039%_))))
                                    (let ((_%tl191777192049%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191779192044%_)))
                                          (_%hd191778192047%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191779192044%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd191778192047%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd191778192047%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191777192049%_))
                                                  (let ((_%e191782192052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191777192049%_))))
                                                    (let ((_%tl191780192057%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191782192052%_)))
                                                          (_%hd191781192055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191782192052%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl191780192057%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl191774192041%_))
                      (let ((_%e191785192060%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl191774192041%_))))
                        (let ((_%tl191783192065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191785192060%_)))
                              (_%hd191784192063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191785192060%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd191784192063%_))
                              (let ((_%e191788192068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd191784192063%_))))
                                (let ((_%tl191786192073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e191788192068%_)))
                                      (_%hd191787192071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e191788192068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd191787192071%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd191787192071%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl191786192073%_))
                                              (let ((_%e191791192076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl191786192073%_))))
                                                (let ((_%tl191789192081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e191791192076%_)))
                                                      (_%hd191790192079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e191791192076%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191789192081%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl191783192065%_))
                                                          (let ((_%e191794192084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl191783192065%_))))
                    (let ((_%tl191792192089%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191794192084%_)))
                          (_%hd191793192087%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191794192084%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd191793192087%_))
                          (let ((_%e191797192092%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd191793192087%_))))
                            (let ((_%tl191795192097%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e191797192092%_)))
                                  (_%hd191796192095%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e191797192092%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd191796192095%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd191796192095%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl191795192097%_))
                                          (let ((_%e191800192100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl191795192097%_))))
                                            (let ((_%tl191798192105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e191800192100%_)))
                                                  (_%hd191799192103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e191800192100%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl191798192105%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl191792192089%_))
                                                      (let ((_%e191803192108%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl191792192089%_))))
                (let ((_%tl191801192113%_
                       (let () (declare (not safe)) (##cdr _%e191803192108%_)))
                      (_%hd191802192111%_
                       (let ()
                         (declare (not safe))
                         (##car _%e191803192108%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd191802192111%_))
                      (let ((_%e191806192116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd191802192111%_))))
                        (let ((_%tl191804192121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e191806192116%_)))
                              (_%hd191805192119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e191806192116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd191805192119%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd191805192119%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl191804192121%_))
                                      (let ((_%e191809192124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl191804192121%_))))
                                        (let ((_%tl191807192129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e191809192124%_)))
                                              (_%hd191808192127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e191809192124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191807192129%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl191801192113%_))
                                                  (let ((_%e191812192132%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl191801192113%_))))
                                                    (let ((_%tl191810192137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e191812192132%_)))
                                                          (_%hd191811192135%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e191812192132%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd191811192135%_))
                                                          (let ((_%e191815192140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd191811192135%_))))
                    (let ((_%tl191813192145%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e191815192140%_)))
                          (_%hd191814192143%_
                           (let ()
                             (declare (not safe))
                             (##car _%e191815192140%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd191814192143%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd191814192143%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl191813192145%_))
                                  (let ((_%e191818192148%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl191813192145%_))))
                                    (let ((_%tl191816192153%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e191818192148%_)))
                                          (_%hd191817192151%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e191818192148%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl191816192153%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl191810192137%_))
                                              (_%__match192843192844%_
                                               _%e191773192028%_
                                               _%hd191772192031%_
                                               _%tl191771192033%_
                                               _%e191776192036%_
                                               _%hd191775192039%_
                                               _%tl191774192041%_
                                               _%e191779192044%_
                                               _%hd191778192047%_
                                               _%tl191777192049%_
                                               _%e191782192052%_
                                               _%hd191781192055%_
                                               _%tl191780192057%_
                                               _%e191785192060%_
                                               _%hd191784192063%_
                                               _%tl191783192065%_
                                               _%e191788192068%_
                                               _%hd191787192071%_
                                               _%tl191786192073%_
                                               _%e191791192076%_
                                               _%hd191790192079%_
                                               _%tl191789192081%_
                                               _%e191794192084%_
                                               _%hd191793192087%_
                                               _%tl191792192089%_
                                               _%e191797192092%_
                                               _%hd191796192095%_
                                               _%tl191795192097%_
                                               _%e191800192100%_
                                               _%hd191799192103%_
                                               _%tl191798192105%_
                                               _%e191803192108%_
                                               _%hd191802192111%_
                                               _%tl191801192113%_
                                               _%e191806192116%_
                                               _%hd191805192119%_
                                               _%tl191804192121%_
                                               _%e191809192124%_
                                               _%hd191808192127%_
                                               _%tl191807192129%_
                                               _%e191812192132%_
                                               _%hd191811192135%_
                                               _%tl191810192137%_
                                               _%e191815192140%_
                                               _%hd191814192143%_
                                               _%tl191813192145%_
                                               _%e191818192148%_
                                               _%hd191817192151%_
                                               _%tl191816192153%_)
                                              (_%__kont192714192715%_))
                                          (_%__kont192714192715%_))))
                                  (_%__kont192714192715%_))
                              (_%__kont192714192715%_))
                          (_%__kont192714192715%_))))
                  (_%__kont192714192715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl191801192113%_))
                                                      (if (let ((__tmp193075
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp193075 'bind-method!))
                  (let ((_%L191982%_ _%hd191808192127%_)
                        (_%L191983%_ _%hd191799192103%_)
                        (_%L191984%_ _%hd191790192079%_)
                        (_%L191985%_ _%hd191781192055%_))
                    (_%__kont192712192713%_
                     _%L191982%_
                     _%L191983%_
                     _%L191984%_
                     _%L191985%_))
                  (_%__kont192714192715%_))
              (_%__kont192714192715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192714192715%_))))
                                      (_%__kont192714192715%_))
                                  (_%__kont192714192715%_))
                              (_%__kont192714192715%_))))
                      (_%__kont192714192715%_))))
              (_%__kont192714192715%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192714192715%_))))
                                          (_%__kont192714192715%_))
                                      (_%__kont192714192715%_))
                                  (_%__kont192714192715%_))))
                          (_%__kont192714192715%_))))
                  (_%__kont192714192715%_))
              (_%__kont192714192715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont192714192715%_))
                                          (_%__kont192714192715%_))
                                      (_%__kont192714192715%_))))
                              (_%__kont192714192715%_))))
                      (_%__kont192714192715%_))
                  (_%__kont192714192715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont192714192715%_))
                                              (_%__kont192714192715%_))
                                          (_%__kont192714192715%_))))
                                  (_%__kont192714192715%_))))
                          (_%__kont192714192715%_))))
                  (_%__kont192714192715%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self191583%_ _%stx191584%_)
        (let* ((_%__stx192952192953%_ _%stx191584%_)
               (_%g191587191627%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx192952192953%_)))))
          (let ((_%__kont192954192955%_
                 (lambda (_%L191733%_ _%L191734%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L191734%_))
                               (cons _%L191733%_ '())))))
                (_%__kont192956192957%_
                 (lambda (_%L191656%_ _%L191657%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx192952192953%_))
                (let ((_%e191593191677%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx192952192953%_))))
                  (let ((_%tl191591191682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e191593191677%_)))
                        (_%hd191592191680%_
                         (let ()
                           (declare (not safe))
                           (##car _%e191593191677%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl191591191682%_))
                        (let ((_%e191596191685%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl191591191682%_))))
                          (let ((_%tl191594191690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e191596191685%_)))
                                (_%hd191595191688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e191596191685%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd191595191688%_))
                                (let ((_%e191599191693%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd191595191688%_))))
                                  (let ((_%tl191597191698%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e191599191693%_)))
                                        (_%hd191598191696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e191599191693%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd191598191696%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd191598191696%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191597191698%_))
                                                (let ((_%e191602191701%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191597191698%_))))
                                                  (let ((_%tl191600191706%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191602191701%_)))
                                                        (_%hd191601191704%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191602191701%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191600191706%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl191594191690%_))
                                                            (let ((_%e191605191709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191594191690%_))))
                      (let ((_%tl191603191714%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191605191709%_)))
                            (_%hd191604191712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191605191709%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd191604191712%_))
                            (let ((_%e191608191717%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd191604191712%_))))
                              (let ((_%tl191606191722%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e191608191717%_)))
                                    (_%hd191607191720%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e191608191717%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd191607191720%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd191607191720%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191606191722%_))
                                            (let ((_%e191611191725%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191606191722%_))))
                                              (let ((_%tl191609191730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191611191725%_)))
                                                    (_%hd191610191728%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191611191725%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191609191730%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191603191714%_))
                                                        (_%__kont192954192955%_
                                                         _%hd191610191728%_
                                                         _%hd191601191704%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191587191627%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191603191714%_))
                                                        (_%__kont192956192957%_
                                                         _%hd191604191712%_
                                                         _%hd191595191688%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191587191627%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl191603191714%_))
                                                (_%__kont192956192957%_
                                                 _%hd191604191712%_
                                                 _%hd191595191688%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191587191627%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191603191714%_))
                                            (_%__kont192956192957%_
                                             _%hd191604191712%_
                                             _%hd191595191688%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191587191627%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl191603191714%_))
                                        (_%__kont192956192957%_
                                         _%hd191604191712%_
                                         _%hd191595191688%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g191587191627%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl191603191714%_))
                                (_%__kont192956192957%_
                                 _%hd191604191712%_
                                 _%hd191595191688%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g191587191627%_))))))
                    (let () (declare (not safe)) (_%g191587191627%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl191594191690%_))
                    (let ((_%e191622191648%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl191594191690%_))))
                      (let ((_%tl191620191653%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e191622191648%_)))
                            (_%hd191621191651%_
                             (let ()
                               (declare (not safe))
                               (##car _%e191622191648%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl191620191653%_))
                            (_%__kont192956192957%_
                             _%hd191621191651%_
                             _%hd191595191688%_)
                            (let ()
                              (declare (not safe))
                              (_%g191587191627%_)))))
                    (let () (declare (not safe)) (_%g191587191627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl191594191690%_))
                                                    (let ((_%e191622191648%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl191594191690%_))))
                                                      (let ((_%tl191620191653%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e191622191648%_)))
                    (_%hd191621191651%_
                     (let () (declare (not safe)) (##car _%e191622191648%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl191620191653%_))
                    (_%__kont192956192957%_
                     _%hd191621191651%_
                     _%hd191595191688%_)
                    (let () (declare (not safe)) (_%g191587191627%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191587191627%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl191594191690%_))
                                                (let ((_%e191622191648%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl191594191690%_))))
                                                  (let ((_%tl191620191653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e191622191648%_)))
                                                        (_%hd191621191651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e191622191648%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl191620191653%_))
                                                        (_%__kont192956192957%_
                                                         _%hd191621191651%_
                                                         _%hd191595191688%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g191587191627%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g191587191627%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl191594191690%_))
                                            (let ((_%e191622191648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl191594191690%_))))
                                              (let ((_%tl191620191653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e191622191648%_)))
                                                    (_%hd191621191651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e191622191648%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl191620191653%_))
                                                    (_%__kont192956192957%_
                                                     _%hd191621191651%_
                                                     _%hd191595191688%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g191587191627%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g191587191627%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl191594191690%_))
                                    (let ((_%e191622191648%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl191594191690%_))))
                                      (let ((_%tl191620191653%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e191622191648%_)))
                                            (_%hd191621191651%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e191622191648%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl191620191653%_))
                                            (_%__kont192956192957%_
                                             _%hd191621191651%_
                                             _%hd191595191688%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g191587191627%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g191587191627%_))))))
                        (let () (declare (not safe)) (_%g191587191627%_)))))
                (let () (declare (not safe)) (_%g191587191627%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191570%_)
        (let ((_%self191573%_ _%self191570%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191573%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191343%_)
        (let ((_%self191346%_ _%self191343%_))
          (let* ((_%self191355191371%_ _%self191346%_)
                 (_%E191357191375%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self191355191371%_
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
                 (_%K191358191390%_
                  (lambda (_%methods191378%_
                           _%metaclass191379%_
                           _%system?191380%_
                           _%final?191381%_
                           _%struct?191382%_
                           _%constructor191383%_
                           _%fields191384%_
                           _%slots191385%_
                           _%precendence-list191386%_
                           _%super191387%_
                           _%id191388%_)
                    (cons '@class
                          (cons _%id191388%_
                                (cons _%super191387%_
                                      (cons _%precendence-list191386%_
                                            (cons _%slots191385%_
                                                  (cons _%fields191384%_
                                                        (cons _%constructor191383%_
                                                              (cons _%struct?191382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%final?191381%_
                                  (cons _%system?191380%_
                                        (cons _%metaclass191379%_
                                              (cons (if _%methods191378%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (hash->list
                                                           _%methods191378%_))
                                                        '#f)
                                                    '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
            (if '#t
                (let* ((_%e191359191393%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '1
                           '#f
                           '#f)))
                       (_%id191396%_ _%e191359191393%_)
                       (_%e191360191398%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '2
                           '#f
                           '#f)))
                       (_%super191401%_ _%e191360191398%_)
                       (_%e191361191403%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '3
                           '#f
                           '#f)))
                       (_%precendence-list191406%_ _%e191361191403%_)
                       (_%e191362191408%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '4
                           '#f
                           '#f)))
                       (_%slots191411%_ _%e191362191408%_)
                       (_%e191363191413%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '5
                           '#f
                           '#f)))
                       (_%fields191416%_ _%e191363191413%_)
                       (_%e191364191418%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '6
                           '#f
                           '#f)))
                       (_%constructor191421%_ _%e191364191418%_)
                       (_%e191365191423%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '7
                           '#f
                           '#f)))
                       (_%struct?191426%_ _%e191365191423%_)
                       (_%e191366191428%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '8
                           '#f
                           '#f)))
                       (_%final?191431%_ _%e191366191428%_)
                       (_%e191367191433%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '9
                           '#f
                           '#f)))
                       (_%system?191436%_ _%e191367191433%_)
                       (_%e191368191438%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '10
                           '#f
                           '#f)))
                       (_%metaclass191441%_ _%e191368191438%_)
                       (_%e191369191443%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self191355191371%_
                           '11
                           '#f
                           '#f)))
                       (_%methods191446%_ _%e191369191443%_))
                  (declare (not safe))
                  (_%K191358191390%_
                   _%methods191446%_
                   _%metaclass191441%_
                   _%system?191436%_
                   _%final?191431%_
                   _%struct?191426%_
                   _%constructor191421%_
                   _%fields191416%_
                   _%slots191411%_
                   _%precendence-list191406%_
                   _%super191401%_
                   _%id191396%_))
                (let () (declare (not safe)) (_%E191357191375%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191208%_)
        (let ((_%self191211%_ _%self191208%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191211%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191073%_)
        (let ((_%self191076%_ _%self191073%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191076%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self190938%_)
        (let ((_%self190941%_ _%self190938%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190941%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190941%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self190941%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self190803%_)
        (let ((_%self190806%_ _%self190803%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190806%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190806%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self190806%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self190668%_)
        (let ((_%self190671%_ _%self190668%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190671%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190671%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self190481%_)
        (let ((_%self190484%_ _%self190481%_))
          (let* ((_%self190493190502%_ _%self190484%_)
                 (_%E190495190506%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%self190493190502%_
                             '((!lambda _ signature arity dispatch))))
                    '#!void))
                 (_%K190496190525%_
                  (lambda (_%dispatch190509%_
                           _%arity190510%_
                           _%signature190511%_)
                    (if _%signature190511%_
                        (let ((_%signature190513%_ _%signature190511%_))
                          (cons '@lambda
                                (cons _%arity190510%_
                                      (cons _%dispatch190509%_
                                            (cons 'signature:
                                                  (cons (cons 'return:
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%signature190513%_
                               '1
                               '#f
                               '#f))
                            (cons 'effect:
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%signature190513%_
                                           '2
                                           '#f
                                           '#f))
                                        (cons 'arguments:
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%signature190513%_
                                                       '3
                                                       '#f
                                                       '#f))
                                                    (cons 'unchecked:
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%signature190513%_
                           '4
                           '#f
                           '#f))
                        '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (cons '@lambda
                              (cons _%arity190510%_
                                    (cons _%dispatch190509%_ '())))))))
            (if '#t
                (let* ((_%e190497190528%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self190493190502%_
                           '1
                           '#f
                           '#f)))
                       (_%e190498190531%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self190493190502%_
                           '2
                           '#f
                           '#f)))
                       (_%signature190534%_ _%e190498190531%_)
                       (_%e190499190536%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self190493190502%_
                           '3
                           '#f
                           '#f)))
                       (_%arity190539%_ _%e190499190536%_)
                       (_%e190500190541%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self190493190502%_
                           '4
                           '#f
                           '#f)))
                       (_%dispatch190544%_ _%e190500190541%_))
                  (declare (not safe))
                  (_%K190496190525%_
                   _%dispatch190544%_
                   _%arity190539%_
                   _%signature190534%_))
                (let () (declare (not safe)) (_%E190495190506%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self190342%_)
        (let ((_%self190345%_ _%self190342%_))
          (letrec ((_%clause-e190355%_
                    (lambda (_%clause190357%_)
                      (cdr (let ((__method193040
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause190357%_
                                     'typedecl))))
                             (if __method193040
                                 (__method193040 _%clause190357%_)
                                 (let ()
                                   (declare (not safe))
                                   (error '"Missing method"
                                          _%clause190357%_
                                          'typedecl))))))))
            (cons '@case-lambda
                  (map _%clause-e190355%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self190345%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self190207%_)
        (let ((_%self190210%_ _%self190207%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190210%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190210%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self190072%_)
        (let ((_%self190075%_ _%self190072%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self190075%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self190075%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self189937%_)
        (let ((_%self189940%_ _%self189937%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self189940%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
