(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770607530)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp255949
                   (let ((__obj255943
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
                       (gxc#optimizer-info:::init! __obj255943))
                     __obj255943)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp255949)))))
    (define gxc#optimize!
      (lambda (_%ctx255551%_)
        (let ((__tmp255951
               (lambda ()
                 (let ((__tmp255953
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx255551%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx255551%_)
                          (let ((__tmp255955
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp255954
                                 (##structure-ref
                                  _%ctx255551%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp255955 __tmp255954 '#t))
                          (let ((_%code255555%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx255551%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx255551%_
                             _%code255555%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp255952
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp255953
                    gxc#current-compile-local-type
                    __tmp255952))))
              (__tmp255950 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255951
           gxc#current-compile-mutators
           __tmp255950))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx255537%_)
        (letrec ((_%load-it!255539%_
                  (lambda (_%id255549%_)
                    (if (let ((__tmp255956
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp255956 _%id255549%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id255549%_)
                          (let ((__tmp255957
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp255957 _%id255549%_ '#t)))))))
          (let* ((_%modid255541%_
                  (##structure-ref
                   _%ctx255537%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str255543%_ (symbol->string _%modid255541%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str255543%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str255543%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!255539%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!255539%_
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
      (lambda (_%ctx255474%_)
        (letrec* ((_%deps255476%_
                   (let* ((_%imports255527%_
                           (##structure-ref
                            _%ctx255474%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e255529%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx255474%_))))
                     (if _%$e255529%_
                         ((lambda (_%g255531255533%_)
                            (cons _%g255531255533%_ _%imports255527%_))
                          _%$e255529%_)
                         _%imports255527%_))))
          (let _%lp255478%_ ((_%rest255480%_ _%deps255476%_))
            (let* ((_%rest255481255489%_ _%rest255480%_)
                   (_%else255483255497%_ (lambda () '#!void))
                   (_%K255485255515%_
                    (lambda (_%rest255500%_ _%hd255501%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd255501%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp255959
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp255958
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd255501%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp255959 __tmp255958))
                                '#!void
                                (begin
                                  (let ((_%$e255504%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd255501%_))))
                                    (if _%$e255504%_
                                        ((lambda (_%pre255507%_)
                                           (_%lp255478%_
                                            (cons _%pre255507%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd255501%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e255504%_)
                                        (_%lp255478%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd255501%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd255501%_)))
                            (_%lp255478%_ _%rest255500%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd255501%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp255961
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp255960
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd255501%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp255961 __tmp255960))
                                    '#!void
                                    (begin
                                      (_%lp255478%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd255501%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd255501%_)))
                                (_%lp255478%_ _%rest255500%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd255501%_
                                     'gx#module-import::t))
                                  (_%lp255478%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd255501%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest255500%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd255501%_
                                         'gx#module-export::t))
                                      (_%lp255478%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd255501%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest255500%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd255501%_
                                             'gx#import-set::t))
                                          (_%lp255478%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd255501%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest255500%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd255501%_))))))))))
              (if (pair? _%rest255481255489%_)
                  (let ((_%hd255486255518%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255481255489%_)))
                        (_%tl255487255520%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255481255489%_))))
                    (let* ((_%hd255523%_ _%hd255486255518%_)
                           (_%rest255525%_ _%tl255487255520%_))
                      (_%K255485255515%_ _%rest255525%_ _%hd255523%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx255454%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx255454%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx255454%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht255456%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id255458%_
                    (##structure-ref
                     _%ctx255454%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod255460%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht255456%_ _%id255458%_)))
                   (_%$e255463%_ _%mod255460%_))
              (if _%$e255463%_
                  _%$e255463%_
                  (let* ((_%mod255466%_
                          (gxc#optimizer-import-ssxi _%ctx255454%_))
                         (_%val255471%_
                          (let ((_%$e255468%_ _%mod255466%_))
                            (if _%$e255468%_ _%$e255468%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht255456%_ _%id255458%_ _%val255471%_))
                    _%val255471%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx255452%_)
        (if (##structure-ref _%ctx255452%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx255452%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id255430%_)
        (letrec ((_%catch-e255432%_
                  (lambda (_%exn255450%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn255450%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn255450%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id255430%_))))
                    '#f))
                 (_%import-e255433%_
                  (lambda ()
                    (let* ((_%str-id255436%_
                            (let ((__tmp255962
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id255430%_))))
                              (declare (not safe))
                              (##string-append __tmp255962 '".ssxi")))
                           (_%artefact-path255443%_
                            (let ((_%odir255437255439%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir255437255439%_
                                  (let ((_%odir255441%_ _%odir255437255439%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id255436%_
                                        '".ss"))
                                     _%odir255441%_))
                                  '#f)))
                           (_%library-path255445%_
                            (let ((__tmp255963
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id255436%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp255963)))
                           (_%ssxi-path255447%_
                            (if (and _%artefact-path255443%_
                                     (file-exists? _%artefact-path255443%_))
                                _%artefact-path255443%_
                                _%library-path255445%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path255447%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path255447%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e255432%_ _%import-e255433%_)))))
    (define gxc#optimize-source
      (lambda (_%stx255415%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx255415%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx255415%_))
        (let* ((_%stx255417%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx255415%_)))
               (_%stx255419%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx255417%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx255419%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx255419%_))
          (let _%fixpoint255422%_ ((_%current255424%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx255419%_))
            (let ((_%refined255426%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current255424%_ _%refined255426%_)
                  '#!void
                  (_%fixpoint255422%_ _%refined255426%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx255419%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx255419%_))
          (let ((_%stx255428%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx255419%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx255428%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp255965 (list gxc#::generate-runtime-empty::t))
            (__tmp255964 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp255965
         '()
         __tmp255964
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args255412%_
        (apply make-instance gxc#::generate-ssxi::t _%$args255412%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp255966
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
        (__make-atomic-promise __tmp255966)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx255404%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self255407%_
                (let ((__obj255945
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj255945))
               (__tmp255967
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self255407%_ _%stx255404%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255967
           gxc#current-compile-method
           _%self255407%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self255364%_ _%stx255365%_)
        (let* ((_%g255367255377%_
                (lambda (_%g255368255374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255368255374%_))))
               (_%g255366255401%_
                (lambda (_%g255368255380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255368255380%_))
                      (let ((_%e255370255382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g255368255380%_))))
                        (let ((_%hd255371255385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255370255382%_)))
                              (_%tl255372255387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255370255382%_))))
                          ((lambda (_%g255369255390%_)
                             (let ((__tmp255970
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self255364%_
                                         _%stx255365%_))))
                                   (__tmp255968
                                    (let ((__tmp255969
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp255969 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp255970
                                gx#current-expander-phi
                                __tmp255968)))
                           _%tl255372255387%_)))
                      (_%g255367255377%_ _%g255368255380%_)))))
          (_%g255366255401%_ _%stx255365%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self255303%_ _%stx255304%_)
        (let* ((_%g255306255320%_
                (lambda (_%g255307255317%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255307255317%_))))
               (_%g255305255361%_
                (lambda (_%g255307255323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255307255323%_))
                      (let ((_%e255310255325%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g255307255323%_))))
                        (let ((_%hd255311255328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255310255325%_)))
                              (_%tl255312255330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255310255325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl255312255330%_))
                              (let ((_%e255313255333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl255312255330%_))))
                                (let ((_%hd255314255336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e255313255333%_)))
                                      (_%tl255315255338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e255313255333%_))))
                                  ((lambda (_%g255308255341%_
                                            _%g255309255342%_)
                                     (let* ((_%ctx255355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g255309255342%_)))
                                            (_%code255357%_
                                             (##structure-ref
                                              _%ctx255355%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp255971
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self255303%_
                                                  _%code255357%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp255971
                                        gx#current-expander-context
                                        _%ctx255355%_)))
                                   _%tl255315255338%_
                                   _%hd255314255336%_)))
                              (_%g255306255320%_ _%g255307255323%_))))
                      (_%g255306255320%_ _%g255307255323%_)))))
          (_%g255305255361%_ _%stx255304%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self255110%_ _%stx255111%_)
        (letrec ((_%generate-e255113%_
                  (lambda (_%id255288%_)
                    (let* ((_%sym255290%_
                            (if (let ((__tmp255972
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp255972))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id255288%_))
                                '#f))
                           (_%$e255292%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym255290%_))))
                      (if _%$e255292%_
                          ((lambda (_%klass255295%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym255290%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym255290%_
                                                     (cons (let ((__method255946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass255295%_ 'typedecl))))
                     (if __method255946
                         (let ()
                           (declare (not safe))
                           (__method255946 _%klass255295%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass255295%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym255290%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym255290%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e255292%_)
                          (let ((_%$e255297%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym255290%_))))
                            (if _%$e255297%_
                                ((lambda (_%type255300%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym255290%_
                                      '" "
                                      _%type255300%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type255300%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym255290%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym255290%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type255300%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym255290%_
                                                   (cons (let ((__method255947
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type255300%_ 'typedecl))))
                   (if __method255947
                       (let ()
                         (declare (not safe))
                         (__method255947 _%type255300%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type255300%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e255297%_)
                                '(begin))))))))
          (let* ((_%__stx255558255559%_ _%stx255111%_)
                 (_%g255116255154%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx255558255559%_)))))
            (let ((_%__kont255560255561%_
                   (lambda (_%g255118255270%_)
                     (_%generate-e255113%_ _%g255118255270%_)))
                  (_%__kont255562255563%_
                   (lambda (_%g255131255205%_)
                     (let ((_%types255231%_
                            (map _%generate-e255113%_
                                 (let ((__tmp255973
                                        (lambda (_%g255223255226%_
                                                 _%g255224255228%_)
                                          (cons _%g255223255226%_
                                                _%g255224255228%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp255973
                                    '()
                                    _%g255131255205%_)))))
                       (cons 'begin _%types255231%_)))))
              (let ((_%__match255613255614%_
                     (lambda (_%e255132255159%_
                              _%hd255133255162%_
                              _%tl255134255164%_
                              _%e255135255167%_
                              _%hd255136255170%_
                              _%tl255137255172%_
                              _%__splice255564255565%_
                              _%target255138255175%_
                              _%tl255140255177%_)
                       (letrec ((_%loop255141255180%_
                                 (lambda (_%hd255139255183%_
                                          _%id255145255185%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd255139255183%_))
                                       (let ((_%e255142255187%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd255139255183%_))))
                                         (let ((_%lp-tl255144255192%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e255142255187%_)))
                                               (_%lp-hd255143255190%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e255142255187%_))))
                                           (_%loop255141255180%_
                                            _%lp-tl255144255192%_
                                            (cons _%lp-hd255143255190%_
                                                  _%id255145255185%_))))
                                       (let ((_%id255146255195%_
                                              (reverse _%id255145255185%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl255137255172%_))
                                             (let ((_%e255147255197%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl255137255172%_))))
                                               (let ((_%tl255149255202%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e255147255197%_)))
                                                     (_%hd255148255200%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e255147255197%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl255149255202%_))
                                                     (_%__kont255562255563%_
                                                      _%id255146255195%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g255116255154%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g255116255154%_))))))))
                         (_%loop255141255180%_ _%target255138255175%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx255558255559%_))
                    (let ((_%e255119255238%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx255558255559%_))))
                      (let ((_%tl255121255243%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e255119255238%_)))
                            (_%hd255120255241%_
                             (let ()
                               (declare (not safe))
                               (##car _%e255119255238%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl255121255243%_))
                            (let ((_%e255122255246%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl255121255243%_))))
                              (let ((_%tl255124255251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e255122255246%_)))
                                    (_%hd255123255249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e255122255246%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd255123255249%_))
                                    (let ((_%e255125255254%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd255123255249%_))))
                                      (let ((_%tl255127255259%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e255125255254%_)))
                                            (_%hd255126255257%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e255125255254%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl255127255259%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl255124255251%_))
                                                (let ((_%e255128255262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl255124255251%_))))
                                                  (let ((_%tl255130255267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e255128255262%_)))
                                                        (_%hd255129255265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e255128255262%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255130255267%_))
                                                        (_%__kont255560255561%_
                                                         _%hd255126255257%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd255123255249%_))
                                                            (let ((_%__splice255564255565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd255123255249%_
                              '0))))
                      (let ((_%tl255140255177%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice255564255565%_ '1)))
                            (_%target255138255175%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice255564255565%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl255140255177%_))
                            (_%__match255613255614%_
                             _%e255119255238%_
                             _%hd255120255241%_
                             _%tl255121255243%_
                             _%e255122255246%_
                             _%hd255123255249%_
                             _%tl255124255251%_
                             _%__splice255564255565%_
                             _%target255138255175%_
                             _%tl255140255177%_)
                            (let ()
                              (declare (not safe))
                              (_%g255116255154%_)))))
                    (let () (declare (not safe)) (_%g255116255154%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd255123255249%_))
                                                    (let ((_%__splice255564255565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd255123255249%_
                                                              '0))))
                                                      (let ((_%tl255140255177%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice255564255565%_ '1)))
                    (_%target255138255175%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice255564255565%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl255140255177%_))
                    (_%__match255613255614%_
                     _%e255119255238%_
                     _%hd255120255241%_
                     _%tl255121255243%_
                     _%e255122255246%_
                     _%hd255123255249%_
                     _%tl255124255251%_
                     _%__splice255564255565%_
                     _%target255138255175%_
                     _%tl255140255177%_)
                    (let () (declare (not safe)) (_%g255116255154%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g255116255154%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd255123255249%_))
                                                (let ((_%__splice255564255565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd255123255249%_
                                                          '0))))
                                                  (let ((_%tl255140255177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice255564255565%_
                                                            '1)))
                                                        (_%target255138255175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice255564255565%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255140255177%_))
                                                        (_%__match255613255614%_
                                                         _%e255119255238%_
                                                         _%hd255120255241%_
                                                         _%tl255121255243%_
                                                         _%e255122255246%_
                                                         _%hd255123255249%_
                                                         _%tl255124255251%_
                                                         _%__splice255564255565%_
                                                         _%target255138255175%_
                                                         _%tl255140255177%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g255116255154%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g255116255154%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd255123255249%_))
                                        (let ((_%__splice255564255565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd255123255249%_
                                                  '0))))
                                          (let ((_%tl255140255177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice255564255565%_
                                                    '1)))
                                                (_%target255138255175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice255564255565%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl255140255177%_))
                                                (_%__match255613255614%_
                                                 _%e255119255238%_
                                                 _%hd255120255241%_
                                                 _%tl255121255243%_
                                                 _%e255122255246%_
                                                 _%hd255123255249%_
                                                 _%tl255124255251%_
                                                 _%__splice255564255565%_
                                                 _%target255138255175%_
                                                 _%tl255140255177%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g255116255154%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g255116255154%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g255116255154%_)))))
                    (let () (declare (not safe)) (_%g255116255154%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self254663%_ _%stx254664%_)
        (let* ((_%__stx255616255617%_ _%stx254664%_)
               (_%g254668254770%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255616255617%_)))))
          (let ((_%__kont255618255619%_
                 (lambda (_%g254670255060%_
                          _%g254671255061%_
                          _%g254672255062%_
                          _%g254673255063%_
                          _%g254674255064%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g254673255063%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g254672255062%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g254671255061%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g254670255060%_))
                                                 '())))))))
                (_%__kont255620255621%_
                 (lambda (_%g254723254886%_
                          _%g254724254887%_
                          _%g254725254888%_
                          _%g254726254889%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g254725254888%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g254724254887%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g254723254886%_))
                                           (cons '#f '())))))))
                (_%__kont255622255623%_ (lambda () '(begin))))
            (let ((_%__match255751255752%_
                   (lambda (_%e254675254932%_
                            _%hd254676254935%_
                            _%tl254677254937%_
                            _%e254678254940%_
                            _%hd254679254943%_
                            _%tl254680254945%_
                            _%e254681254948%_
                            _%hd254682254951%_
                            _%tl254683254953%_
                            _%e254684254956%_
                            _%hd254685254959%_
                            _%tl254686254961%_
                            _%e254687254964%_
                            _%hd254688254967%_
                            _%tl254689254969%_
                            _%e254690254972%_
                            _%hd254691254975%_
                            _%tl254692254977%_
                            _%e254693254980%_
                            _%hd254694254983%_
                            _%tl254695254985%_
                            _%e254696254988%_
                            _%hd254697254991%_
                            _%tl254698254993%_
                            _%e254699254996%_
                            _%hd254700254999%_
                            _%tl254701255001%_
                            _%e254702255004%_
                            _%hd254703255007%_
                            _%tl254704255009%_
                            _%e254705255012%_
                            _%hd254706255015%_
                            _%tl254707255017%_
                            _%e254708255020%_
                            _%hd254709255023%_
                            _%tl254710255025%_
                            _%e254711255028%_
                            _%hd254712255031%_
                            _%tl254713255033%_
                            _%e254714255036%_
                            _%hd254715255039%_
                            _%tl254716255041%_
                            _%e254717255044%_
                            _%hd254718255047%_
                            _%tl254719255049%_
                            _%e254720255052%_
                            _%hd254721255055%_
                            _%tl254722255057%_)
                     (let ((_%g254670255060%_ _%hd254721255055%_)
                           (_%g254671255061%_ _%hd254712255031%_)
                           (_%g254672255062%_ _%hd254703255007%_)
                           (_%g254673255063%_ _%hd254694254983%_)
                           (_%g254674255064%_ _%hd254685254959%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g254674255064%_
                              'bind-method!))
                           (_%__kont255618255619%_
                            _%g254670255060%_
                            _%g254671255061%_
                            _%g254672255062%_
                            _%g254673255063%_
                            _%g254674255064%_)
                           (_%__kont255622255623%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255616255617%_))
                  (let ((_%e254675254932%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255616255617%_))))
                    (let ((_%tl254677254937%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254675254932%_)))
                          (_%hd254676254935%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254675254932%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254677254937%_))
                          (let ((_%e254678254940%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl254677254937%_))))
                            (let ((_%tl254680254945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254678254940%_)))
                                  (_%hd254679254943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254678254940%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd254679254943%_))
                                  (let ((_%e254681254948%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd254679254943%_))))
                                    (let ((_%tl254683254953%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254681254948%_)))
                                          (_%hd254682254951%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254681254948%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd254682254951%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd254682254951%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254683254953%_))
                                                  (let ((_%e254684254956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl254683254953%_))))
                                                    (let ((_%tl254686254961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254684254956%_)))
                                                          (_%hd254685254959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254684254956%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254686254961%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl254680254945%_))
                      (let ((_%e254687254964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl254680254945%_))))
                        (let ((_%tl254689254969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254687254964%_)))
                              (_%hd254688254967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254687254964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd254688254967%_))
                              (let ((_%e254690254972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd254688254967%_))))
                                (let ((_%tl254692254977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e254690254972%_)))
                                      (_%hd254691254975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e254690254972%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd254691254975%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd254691254975%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl254692254977%_))
                                              (let ((_%e254693254980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl254692254977%_))))
                                                (let ((_%tl254695254985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e254693254980%_)))
                                                      (_%hd254694254983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e254693254980%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl254695254985%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl254689254969%_))
                                                          (let ((_%e254696254988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl254689254969%_))))
                    (let ((_%tl254698254993%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254696254988%_)))
                          (_%hd254697254991%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254696254988%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd254697254991%_))
                          (let ((_%e254699254996%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd254697254991%_))))
                            (let ((_%tl254701255001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254699254996%_)))
                                  (_%hd254700254999%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254699254996%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd254700254999%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd254700254999%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl254701255001%_))
                                          (let ((_%e254702255004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl254701255001%_))))
                                            (let ((_%tl254704255009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e254702255004%_)))
                                                  (_%hd254703255007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e254702255004%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl254704255009%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl254698254993%_))
                                                      (let ((_%e254705255012%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl254698254993%_))))
                (let ((_%tl254707255017%_
                       (let () (declare (not safe)) (##cdr _%e254705255012%_)))
                      (_%hd254706255015%_
                       (let ()
                         (declare (not safe))
                         (##car _%e254705255012%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd254706255015%_))
                      (let ((_%e254708255020%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd254706255015%_))))
                        (let ((_%tl254710255025%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254708255020%_)))
                              (_%hd254709255023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254708255020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd254709255023%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd254709255023%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl254710255025%_))
                                      (let ((_%e254711255028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl254710255025%_))))
                                        (let ((_%tl254713255033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254711255028%_)))
                                              (_%hd254712255031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254711255028%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254713255033%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254707255017%_))
                                                  (let ((_%e254714255036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl254707255017%_))))
                                                    (let ((_%tl254716255041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254714255036%_)))
                                                          (_%hd254715255039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254714255036%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd254715255039%_))
                                                          (let ((_%e254717255044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd254715255039%_))))
                    (let ((_%tl254719255049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254717255044%_)))
                          (_%hd254718255047%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254717255044%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd254718255047%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd254718255047%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl254719255049%_))
                                  (let ((_%e254720255052%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl254719255049%_))))
                                    (let ((_%tl254722255057%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254720255052%_)))
                                          (_%hd254721255055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254720255052%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl254722255057%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254716255041%_))
                                              (_%__match255751255752%_
                                               _%e254675254932%_
                                               _%hd254676254935%_
                                               _%tl254677254937%_
                                               _%e254678254940%_
                                               _%hd254679254943%_
                                               _%tl254680254945%_
                                               _%e254681254948%_
                                               _%hd254682254951%_
                                               _%tl254683254953%_
                                               _%e254684254956%_
                                               _%hd254685254959%_
                                               _%tl254686254961%_
                                               _%e254687254964%_
                                               _%hd254688254967%_
                                               _%tl254689254969%_
                                               _%e254690254972%_
                                               _%hd254691254975%_
                                               _%tl254692254977%_
                                               _%e254693254980%_
                                               _%hd254694254983%_
                                               _%tl254695254985%_
                                               _%e254696254988%_
                                               _%hd254697254991%_
                                               _%tl254698254993%_
                                               _%e254699254996%_
                                               _%hd254700254999%_
                                               _%tl254701255001%_
                                               _%e254702255004%_
                                               _%hd254703255007%_
                                               _%tl254704255009%_
                                               _%e254705255012%_
                                               _%hd254706255015%_
                                               _%tl254707255017%_
                                               _%e254708255020%_
                                               _%hd254709255023%_
                                               _%tl254710255025%_
                                               _%e254711255028%_
                                               _%hd254712255031%_
                                               _%tl254713255033%_
                                               _%e254714255036%_
                                               _%hd254715255039%_
                                               _%tl254716255041%_
                                               _%e254717255044%_
                                               _%hd254718255047%_
                                               _%tl254719255049%_
                                               _%e254720255052%_
                                               _%hd254721255055%_
                                               _%tl254722255057%_)
                                              (_%__kont255622255623%_))
                                          (_%__kont255622255623%_))))
                                  (_%__kont255622255623%_))
                              (_%__kont255622255623%_))
                          (_%__kont255622255623%_))))
                  (_%__kont255622255623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl254707255017%_))
                                                      (if (let ((__tmp255974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp255974 'bind-method!))
                  (let ((_%g254723254886%_ _%hd254712255031%_)
                        (_%g254724254887%_ _%hd254703255007%_)
                        (_%g254725254888%_ _%hd254694254983%_)
                        (_%g254726254889%_ _%hd254685254959%_))
                    (_%__kont255620255621%_
                     _%g254723254886%_
                     _%g254724254887%_
                     _%g254725254888%_
                     _%g254726254889%_))
                  (_%__kont255622255623%_))
              (_%__kont255622255623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont255622255623%_))))
                                      (_%__kont255622255623%_))
                                  (_%__kont255622255623%_))
                              (_%__kont255622255623%_))))
                      (_%__kont255622255623%_))))
              (_%__kont255622255623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont255622255623%_))))
                                          (_%__kont255622255623%_))
                                      (_%__kont255622255623%_))
                                  (_%__kont255622255623%_))))
                          (_%__kont255622255623%_))))
                  (_%__kont255622255623%_))
              (_%__kont255622255623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont255622255623%_))
                                          (_%__kont255622255623%_))
                                      (_%__kont255622255623%_))))
                              (_%__kont255622255623%_))))
                      (_%__kont255622255623%_))
                  (_%__kont255622255623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont255622255623%_))
                                              (_%__kont255622255623%_))
                                          (_%__kont255622255623%_))))
                                  (_%__kont255622255623%_))))
                          (_%__kont255622255623%_))))
                  (_%__kont255622255623%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self254487%_ _%stx254488%_)
        (let* ((_%__stx255860255861%_ _%stx254488%_)
               (_%g254491254531%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255860255861%_)))))
          (let ((_%__kont255862255863%_
                 (lambda (_%g254493254637%_ _%g254494254638%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g254494254638%_))
                               (cons _%g254493254637%_ '())))))
                (_%__kont255864255865%_
                 (lambda (_%g254516254560%_ _%g254517254561%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx255860255861%_))
                (let ((_%e254495254581%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx255860255861%_))))
                  (let ((_%tl254497254586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e254495254581%_)))
                        (_%hd254496254584%_
                         (let ()
                           (declare (not safe))
                           (##car _%e254495254581%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl254497254586%_))
                        (let ((_%e254498254589%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl254497254586%_))))
                          (let ((_%tl254500254594%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e254498254589%_)))
                                (_%hd254499254592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e254498254589%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd254499254592%_))
                                (let ((_%e254501254597%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd254499254592%_))))
                                  (let ((_%tl254503254602%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e254501254597%_)))
                                        (_%hd254502254600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e254501254597%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd254502254600%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd254502254600%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl254503254602%_))
                                                (let ((_%e254504254605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl254503254602%_))))
                                                  (let ((_%tl254506254610%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e254504254605%_)))
                                                        (_%hd254505254608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e254504254605%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254506254610%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl254500254594%_))
                                                            (let ((_%e254507254613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl254500254594%_))))
                      (let ((_%tl254509254618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254507254613%_)))
                            (_%hd254508254616%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254507254613%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd254508254616%_))
                            (let ((_%e254510254621%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd254508254616%_))))
                              (let ((_%tl254512254626%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e254510254621%_)))
                                    (_%hd254511254624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e254510254621%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd254511254624%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd254511254624%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl254512254626%_))
                                            (let ((_%e254513254629%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl254512254626%_))))
                                              (let ((_%tl254515254634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e254513254629%_)))
                                                    (_%hd254514254632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e254513254629%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl254515254634%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254509254618%_))
                                                        (_%__kont255862255863%_
                                                         _%hd254514254632%_
                                                         _%hd254505254608%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g254491254531%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254509254618%_))
                                                        (_%__kont255864255865%_
                                                         _%hd254508254616%_
                                                         _%hd254499254592%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g254491254531%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl254509254618%_))
                                                (_%__kont255864255865%_
                                                 _%hd254508254616%_
                                                 _%hd254499254592%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g254491254531%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl254509254618%_))
                                            (_%__kont255864255865%_
                                             _%hd254508254616%_
                                             _%hd254499254592%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g254491254531%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl254509254618%_))
                                        (_%__kont255864255865%_
                                         _%hd254508254616%_
                                         _%hd254499254592%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g254491254531%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl254509254618%_))
                                (_%__kont255864255865%_
                                 _%hd254508254616%_
                                 _%hd254499254592%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g254491254531%_))))))
                    (let () (declare (not safe)) (_%g254491254531%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl254500254594%_))
                    (let ((_%e254524254552%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl254500254594%_))))
                      (let ((_%tl254526254557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254524254552%_)))
                            (_%hd254525254555%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254524254552%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl254526254557%_))
                            (_%__kont255864255865%_
                             _%hd254525254555%_
                             _%hd254499254592%_)
                            (let ()
                              (declare (not safe))
                              (_%g254491254531%_)))))
                    (let () (declare (not safe)) (_%g254491254531%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl254500254594%_))
                                                    (let ((_%e254524254552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl254500254594%_))))
                                                      (let ((_%tl254526254557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e254524254552%_)))
                    (_%hd254525254555%_
                     (let () (declare (not safe)) (##car _%e254524254552%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl254526254557%_))
                    (_%__kont255864255865%_
                     _%hd254525254555%_
                     _%hd254499254592%_)
                    (let () (declare (not safe)) (_%g254491254531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g254491254531%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl254500254594%_))
                                                (let ((_%e254524254552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl254500254594%_))))
                                                  (let ((_%tl254526254557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e254524254552%_)))
                                                        (_%hd254525254555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e254524254552%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254526254557%_))
                                                        (_%__kont255864255865%_
                                                         _%hd254525254555%_
                                                         _%hd254499254592%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g254491254531%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g254491254531%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl254500254594%_))
                                            (let ((_%e254524254552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl254500254594%_))))
                                              (let ((_%tl254526254557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e254524254552%_)))
                                                    (_%hd254525254555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e254524254552%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl254526254557%_))
                                                    (_%__kont255864255865%_
                                                     _%hd254525254555%_
                                                     _%hd254499254592%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g254491254531%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g254491254531%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl254500254594%_))
                                    (let ((_%e254524254552%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl254500254594%_))))
                                      (let ((_%tl254526254557%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e254524254552%_)))
                                            (_%hd254525254555%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e254524254552%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl254526254557%_))
                                            (_%__kont255864255865%_
                                             _%hd254525254555%_
                                             _%hd254499254592%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g254491254531%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g254491254531%_))))))
                        (let () (declare (not safe)) (_%g254491254531%_)))))
                (let () (declare (not safe)) (_%g254491254531%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self254474%_)
        (let ((_%self254477%_ _%self254474%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254477%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self254248%_)
        (let* ((_%self254251%_ _%self254248%_)
               (_%self254260254276%_ _%self254251%_)
               (_%E254262254279%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self254260254276%_
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
               (_%K254263254294%_
                (lambda (_%methods254282%_
                         _%metaclass254283%_
                         _%system?254284%_
                         _%final?254285%_
                         _%struct?254286%_
                         _%constructor254287%_
                         _%fields254288%_
                         _%slots254289%_
                         _%precendence-list254290%_
                         _%super254291%_
                         _%id254292%_)
                  (cons '@class
                        (cons _%id254292%_
                              (cons _%super254291%_
                                    (cons _%precendence-list254290%_
                                          (cons _%slots254289%_
                                                (cons _%fields254288%_
                                                      (cons _%constructor254287%_
                                                            (cons _%struct?254286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?254285%_
                                (cons _%system?254284%_
                                      (cons _%metaclass254283%_
                                            (cons (if _%methods254282%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods254282%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e254264254297%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '1 '#f '#f)))
               (_%id254300%_ _%e254264254297%_)
               (_%e254265254302%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '2 '#f '#f)))
               (_%super254305%_ _%e254265254302%_)
               (_%e254266254307%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '3 '#f '#f)))
               (_%precendence-list254310%_ _%e254266254307%_)
               (_%e254267254312%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '4 '#f '#f)))
               (_%slots254315%_ _%e254267254312%_)
               (_%e254268254317%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '5 '#f '#f)))
               (_%fields254320%_ _%e254268254317%_)
               (_%e254269254322%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '6 '#f '#f)))
               (_%constructor254325%_ _%e254269254322%_)
               (_%e254270254327%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '7 '#f '#f)))
               (_%struct?254330%_ _%e254270254327%_)
               (_%e254271254332%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '8 '#f '#f)))
               (_%final?254335%_ _%e254271254332%_)
               (_%e254272254337%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254260254276%_ '9 '#f '#f)))
               (_%system?254340%_ _%e254272254337%_)
               (_%e254273254342%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self254260254276%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass254345%_ _%e254273254342%_)
               (_%e254274254347%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self254260254276%_
                   '11
                   '#f
                   '#f)))
               (_%methods254350%_ _%e254274254347%_))
          (_%K254263254294%_
           _%methods254350%_
           _%metaclass254345%_
           _%system?254340%_
           _%final?254335%_
           _%struct?254330%_
           _%constructor254325%_
           _%fields254320%_
           _%slots254315%_
           _%precendence-list254310%_
           _%super254305%_
           _%id254300%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self254113%_)
        (let ((_%self254116%_ _%self254113%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254116%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self253978%_)
        (let ((_%self253981%_ _%self253978%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253981%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self253843%_)
        (let ((_%self253846%_ _%self253843%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253846%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253846%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253846%_
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
      (lambda (_%self253708%_)
        (let ((_%self253711%_ _%self253708%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253711%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253711%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253711%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self253573%_)
        (let ((_%self253576%_ _%self253573%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253576%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253576%_
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
      (lambda (_%self253387%_)
        (let* ((_%self253390%_ _%self253387%_)
               (_%self253399253408%_ _%self253390%_)
               (_%E253401253411%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253399253408%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K253402253430%_
                (lambda (_%dispatch253414%_
                         _%arity253415%_
                         _%signature253416%_)
                  (if _%signature253416%_
                      (let ((_%signature253418%_ _%signature253416%_))
                        (cons '@lambda
                              (cons _%arity253415%_
                                    (cons _%dispatch253414%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature253418%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature253418%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature253418%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature253418%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature253418%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity253415%_
                                  (cons _%dispatch253414%_ '()))))))
               (_%e253403253433%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253399253408%_ '1 '#f '#f)))
               (_%e253404253436%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253399253408%_ '2 '#f '#f)))
               (_%signature253439%_ _%e253404253436%_)
               (_%e253405253441%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253399253408%_ '3 '#f '#f)))
               (_%arity253444%_ _%e253405253441%_)
               (_%e253406253446%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253399253408%_ '4 '#f '#f)))
               (_%dispatch253449%_ _%e253406253446%_))
          (_%K253402253430%_
           _%dispatch253449%_
           _%arity253444%_
           _%signature253439%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self253247%_)
        (let ((_%self253250%_ _%self253247%_))
          (letrec ((_%clause-e253261%_
                    (lambda (_%clause253263%_)
                      (cdr (let ((__method255948
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause253263%_
                                     'typedecl))))
                             (if __method255948
                                 (let ()
                                   (declare (not safe))
                                   (__method255948 _%clause253263%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause253263%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e253261%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self253250%_
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
      (lambda (_%self253112%_)
        (let ((_%self253115%_ _%self253112%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253115%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253115%_
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
      (lambda (_%self252977%_)
        (let ((_%self252980%_ _%self252977%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252980%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252980%_
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
      (lambda (_%self252842%_)
        (let ((_%self252845%_ _%self252842%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252845%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
