(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1770752344)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp255956
                   (let ((__obj255950
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
                       (gxc#optimizer-info:::init! __obj255950))
                     __obj255950)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp255956)))))
    (define gxc#optimize!
      (lambda (_%ctx255558%_)
        (let ((__tmp255958
               (lambda ()
                 (let ((__tmp255960
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx255558%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx255558%_)
                          (let ((__tmp255962
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp255961
                                 (##structure-ref
                                  _%ctx255558%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp255962 __tmp255961 '#t))
                          (let ((_%code255562%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx255558%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx255558%_
                             _%code255562%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp255959
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp255960
                    gxc#current-compile-local-type
                    __tmp255959))))
              (__tmp255957 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255958
           gxc#current-compile-mutators
           __tmp255957))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx255544%_)
        (letrec ((_%load-it!255546%_
                  (lambda (_%id255556%_)
                    (if (let ((__tmp255963
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp255963 _%id255556%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id255556%_)
                          (let ((__tmp255964
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp255964 _%id255556%_ '#t)))))))
          (let* ((_%modid255548%_
                  (##structure-ref
                   _%ctx255544%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str255550%_ (symbol->string _%modid255548%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str255550%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str255550%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!255546%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!255546%_
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
      (lambda (_%ctx255481%_)
        (letrec* ((_%deps255483%_
                   (let* ((_%imports255534%_
                           (##structure-ref
                            _%ctx255481%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e255536%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx255481%_))))
                     (if _%$e255536%_
                         ((lambda (_%g255538255540%_)
                            (cons _%g255538255540%_ _%imports255534%_))
                          _%$e255536%_)
                         _%imports255534%_))))
          (let _%lp255485%_ ((_%rest255487%_ _%deps255483%_))
            (let* ((_%rest255488255496%_ _%rest255487%_)
                   (_%else255490255504%_ (lambda () '#!void))
                   (_%K255492255522%_
                    (lambda (_%rest255507%_ _%hd255508%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd255508%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp255966
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp255965
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd255508%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp255966 __tmp255965))
                                '#!void
                                (begin
                                  (let ((_%$e255511%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd255508%_))))
                                    (if _%$e255511%_
                                        ((lambda (_%pre255514%_)
                                           (_%lp255485%_
                                            (cons _%pre255514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd255508%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e255511%_)
                                        (_%lp255485%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd255508%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd255508%_)))
                            (_%lp255485%_ _%rest255507%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd255508%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp255968
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp255967
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd255508%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp255968 __tmp255967))
                                    '#!void
                                    (begin
                                      (_%lp255485%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd255508%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd255508%_)))
                                (_%lp255485%_ _%rest255507%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd255508%_
                                     'gx#module-import::t))
                                  (_%lp255485%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd255508%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest255507%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd255508%_
                                         'gx#module-export::t))
                                      (_%lp255485%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd255508%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest255507%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd255508%_
                                             'gx#import-set::t))
                                          (_%lp255485%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd255508%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest255507%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd255508%_))))))))))
              (if (pair? _%rest255488255496%_)
                  (let ((_%hd255493255525%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest255488255496%_)))
                        (_%tl255494255527%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest255488255496%_))))
                    (let* ((_%hd255530%_ _%hd255493255525%_)
                           (_%rest255532%_ _%tl255494255527%_))
                      (_%K255492255522%_ _%rest255532%_ _%hd255530%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx255461%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx255461%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx255461%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht255463%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id255465%_
                    (##structure-ref
                     _%ctx255461%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod255467%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht255463%_ _%id255465%_)))
                   (_%$e255470%_ _%mod255467%_))
              (if _%$e255470%_
                  _%$e255470%_
                  (let* ((_%mod255473%_
                          (gxc#optimizer-import-ssxi _%ctx255461%_))
                         (_%val255478%_
                          (let ((_%$e255475%_ _%mod255473%_))
                            (if _%$e255475%_ _%$e255475%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht255463%_ _%id255465%_ _%val255478%_))
                    _%val255478%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx255459%_)
        (if (##structure-ref _%ctx255459%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx255459%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id255437%_)
        (letrec ((_%catch-e255439%_
                  (lambda (_%exn255457%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn255457%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn255457%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id255437%_))))
                    '#f))
                 (_%import-e255440%_
                  (lambda ()
                    (let* ((_%str-id255443%_
                            (let ((__tmp255969
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id255437%_))))
                              (declare (not safe))
                              (##string-append __tmp255969 '".ssxi")))
                           (_%artefact-path255450%_
                            (let ((_%odir255444255446%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir255444255446%_
                                  (let ((_%odir255448%_ _%odir255444255446%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id255443%_
                                        '".ss"))
                                     _%odir255448%_))
                                  '#f)))
                           (_%library-path255452%_
                            (let ((__tmp255970
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id255443%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp255970)))
                           (_%ssxi-path255454%_
                            (if (and _%artefact-path255450%_
                                     (file-exists? _%artefact-path255450%_))
                                _%artefact-path255450%_
                                _%library-path255452%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path255454%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path255454%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e255439%_ _%import-e255440%_)))))
    (define gxc#optimize-source
      (lambda (_%stx255422%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx255422%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx255422%_))
        (let* ((_%stx255424%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx255422%_)))
               (_%stx255426%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx255424%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx255426%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx255426%_))
          (let _%fixpoint255429%_ ((_%current255431%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx255426%_))
            (let ((_%refined255433%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current255431%_ _%refined255433%_)
                  '#!void
                  (_%fixpoint255429%_ _%refined255433%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx255426%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx255426%_))
          (let ((_%stx255435%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx255426%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx255435%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp255972 (list gxc#::generate-runtime-empty::t))
            (__tmp255971 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp255972
         '()
         __tmp255971
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args255419%_
        (apply make-instance gxc#::generate-ssxi::t _%$args255419%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp255973
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
        (__make-atomic-promise __tmp255973)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx255411%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self255414%_
                (let ((__obj255952
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj255952))
               (__tmp255974
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self255414%_ _%stx255411%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp255974
           gxc#current-compile-method
           _%self255414%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self255371%_ _%stx255372%_)
        (let* ((_%g255374255384%_
                (lambda (_%g255375255381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255375255381%_))))
               (_%g255373255408%_
                (lambda (_%g255375255387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255375255387%_))
                      (let ((_%e255377255389%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g255375255387%_))))
                        (let ((_%hd255378255392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255377255389%_)))
                              (_%tl255379255394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255377255389%_))))
                          ((lambda (_%g255376255397%_)
                             (let ((__tmp255977
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self255371%_
                                         _%stx255372%_))))
                                   (__tmp255975
                                    (let ((__tmp255976
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp255976 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp255977
                                gx#current-expander-phi
                                __tmp255975)))
                           _%tl255379255394%_)))
                      (_%g255374255384%_ _%g255375255387%_)))))
          (_%g255373255408%_ _%stx255372%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self255310%_ _%stx255311%_)
        (let* ((_%g255313255327%_
                (lambda (_%g255314255324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g255314255324%_))))
               (_%g255312255368%_
                (lambda (_%g255314255330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g255314255330%_))
                      (let ((_%e255317255332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g255314255330%_))))
                        (let ((_%hd255318255335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e255317255332%_)))
                              (_%tl255319255337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e255317255332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl255319255337%_))
                              (let ((_%e255320255340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl255319255337%_))))
                                (let ((_%hd255321255343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e255320255340%_)))
                                      (_%tl255322255345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e255320255340%_))))
                                  ((lambda (_%g255315255348%_
                                            _%g255316255349%_)
                                     (let* ((_%ctx255362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g255316255349%_)))
                                            (_%code255364%_
                                             (##structure-ref
                                              _%ctx255362%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp255978
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self255310%_
                                                  _%code255364%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp255978
                                        gx#current-expander-context
                                        _%ctx255362%_)))
                                   _%tl255322255345%_
                                   _%hd255321255343%_)))
                              (_%g255313255327%_ _%g255314255330%_))))
                      (_%g255313255327%_ _%g255314255330%_)))))
          (_%g255312255368%_ _%stx255311%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self255117%_ _%stx255118%_)
        (letrec ((_%generate-e255120%_
                  (lambda (_%id255295%_)
                    (let* ((_%sym255297%_
                            (if (let ((__tmp255979
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp255979))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id255295%_))
                                '#f))
                           (_%$e255299%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym255297%_))))
                      (if _%$e255299%_
                          ((lambda (_%klass255302%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym255297%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym255297%_
                                                     (cons (let ((__method255953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass255302%_ 'typedecl))))
                     (if __method255953
                         (let ()
                           (declare (not safe))
                           (__method255953 _%klass255302%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass255302%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym255297%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym255297%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e255299%_)
                          (let ((_%$e255304%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym255297%_))))
                            (if _%$e255304%_
                                ((lambda (_%type255307%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym255297%_
                                      '" "
                                      _%type255307%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type255307%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym255297%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym255297%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type255307%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym255297%_
                                                   (cons (let ((__method255954
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type255307%_ 'typedecl))))
                   (if __method255954
                       (let ()
                         (declare (not safe))
                         (__method255954 _%type255307%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type255307%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e255304%_)
                                '(begin))))))))
          (let* ((_%__stx255565255566%_ _%stx255118%_)
                 (_%g255123255161%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx255565255566%_)))))
            (let ((_%__kont255567255568%_
                   (lambda (_%g255125255277%_)
                     (_%generate-e255120%_ _%g255125255277%_)))
                  (_%__kont255569255570%_
                   (lambda (_%g255138255212%_)
                     (let ((_%types255238%_
                            (map _%generate-e255120%_
                                 (let ((__tmp255980
                                        (lambda (_%g255230255233%_
                                                 _%g255231255235%_)
                                          (cons _%g255230255233%_
                                                _%g255231255235%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp255980
                                    '()
                                    _%g255138255212%_)))))
                       (cons 'begin _%types255238%_)))))
              (let ((_%__match255620255621%_
                     (lambda (_%e255139255166%_
                              _%hd255140255169%_
                              _%tl255141255171%_
                              _%e255142255174%_
                              _%hd255143255177%_
                              _%tl255144255179%_
                              _%__splice255571255572%_
                              _%target255145255182%_
                              _%tl255147255184%_)
                       (letrec ((_%loop255148255187%_
                                 (lambda (_%hd255146255190%_
                                          _%id255152255192%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd255146255190%_))
                                       (let ((_%e255149255194%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd255146255190%_))))
                                         (let ((_%lp-tl255151255199%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e255149255194%_)))
                                               (_%lp-hd255150255197%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e255149255194%_))))
                                           (_%loop255148255187%_
                                            _%lp-tl255151255199%_
                                            (cons _%lp-hd255150255197%_
                                                  _%id255152255192%_))))
                                       (let ((_%id255153255202%_
                                              (reverse _%id255152255192%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl255144255179%_))
                                             (let ((_%e255154255204%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl255144255179%_))))
                                               (let ((_%tl255156255209%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e255154255204%_)))
                                                     (_%hd255155255207%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e255154255204%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl255156255209%_))
                                                     (_%__kont255569255570%_
                                                      _%id255153255202%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g255123255161%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g255123255161%_))))))))
                         (_%loop255148255187%_ _%target255145255182%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx255565255566%_))
                    (let ((_%e255126255245%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx255565255566%_))))
                      (let ((_%tl255128255250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e255126255245%_)))
                            (_%hd255127255248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e255126255245%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl255128255250%_))
                            (let ((_%e255129255253%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl255128255250%_))))
                              (let ((_%tl255131255258%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e255129255253%_)))
                                    (_%hd255130255256%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e255129255253%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd255130255256%_))
                                    (let ((_%e255132255261%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd255130255256%_))))
                                      (let ((_%tl255134255266%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e255132255261%_)))
                                            (_%hd255133255264%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e255132255261%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl255134255266%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl255131255258%_))
                                                (let ((_%e255135255269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl255131255258%_))))
                                                  (let ((_%tl255137255274%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e255135255269%_)))
                                                        (_%hd255136255272%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e255135255269%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255137255274%_))
                                                        (_%__kont255567255568%_
                                                         _%hd255133255264%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd255130255256%_))
                                                            (let ((_%__splice255571255572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd255130255256%_
                              '0))))
                      (let ((_%tl255147255184%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice255571255572%_ '1)))
                            (_%target255145255182%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice255571255572%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl255147255184%_))
                            (_%__match255620255621%_
                             _%e255126255245%_
                             _%hd255127255248%_
                             _%tl255128255250%_
                             _%e255129255253%_
                             _%hd255130255256%_
                             _%tl255131255258%_
                             _%__splice255571255572%_
                             _%target255145255182%_
                             _%tl255147255184%_)
                            (let ()
                              (declare (not safe))
                              (_%g255123255161%_)))))
                    (let () (declare (not safe)) (_%g255123255161%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd255130255256%_))
                                                    (let ((_%__splice255571255572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd255130255256%_
                                                              '0))))
                                                      (let ((_%tl255147255184%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice255571255572%_ '1)))
                    (_%target255145255182%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice255571255572%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl255147255184%_))
                    (_%__match255620255621%_
                     _%e255126255245%_
                     _%hd255127255248%_
                     _%tl255128255250%_
                     _%e255129255253%_
                     _%hd255130255256%_
                     _%tl255131255258%_
                     _%__splice255571255572%_
                     _%target255145255182%_
                     _%tl255147255184%_)
                    (let () (declare (not safe)) (_%g255123255161%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g255123255161%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd255130255256%_))
                                                (let ((_%__splice255571255572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd255130255256%_
                                                          '0))))
                                                  (let ((_%tl255147255184%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice255571255572%_
                                                            '1)))
                                                        (_%target255145255182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice255571255572%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl255147255184%_))
                                                        (_%__match255620255621%_
                                                         _%e255126255245%_
                                                         _%hd255127255248%_
                                                         _%tl255128255250%_
                                                         _%e255129255253%_
                                                         _%hd255130255256%_
                                                         _%tl255131255258%_
                                                         _%__splice255571255572%_
                                                         _%target255145255182%_
                                                         _%tl255147255184%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g255123255161%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g255123255161%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd255130255256%_))
                                        (let ((_%__splice255571255572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd255130255256%_
                                                  '0))))
                                          (let ((_%tl255147255184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice255571255572%_
                                                    '1)))
                                                (_%target255145255182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice255571255572%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl255147255184%_))
                                                (_%__match255620255621%_
                                                 _%e255126255245%_
                                                 _%hd255127255248%_
                                                 _%tl255128255250%_
                                                 _%e255129255253%_
                                                 _%hd255130255256%_
                                                 _%tl255131255258%_
                                                 _%__splice255571255572%_
                                                 _%target255145255182%_
                                                 _%tl255147255184%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g255123255161%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g255123255161%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g255123255161%_)))))
                    (let () (declare (not safe)) (_%g255123255161%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self254670%_ _%stx254671%_)
        (let* ((_%__stx255623255624%_ _%stx254671%_)
               (_%g254675254777%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255623255624%_)))))
          (let ((_%__kont255625255626%_
                 (lambda (_%g254677255067%_
                          _%g254678255068%_
                          _%g254679255069%_
                          _%g254680255070%_
                          _%g254681255071%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g254680255070%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g254679255069%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g254678255068%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g254677255067%_))
                                                 '())))))))
                (_%__kont255627255628%_
                 (lambda (_%g254730254893%_
                          _%g254731254894%_
                          _%g254732254895%_
                          _%g254733254896%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g254732254895%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g254731254894%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g254730254893%_))
                                           (cons '#f '())))))))
                (_%__kont255629255630%_ (lambda () '(begin))))
            (let ((_%__match255758255759%_
                   (lambda (_%e254682254939%_
                            _%hd254683254942%_
                            _%tl254684254944%_
                            _%e254685254947%_
                            _%hd254686254950%_
                            _%tl254687254952%_
                            _%e254688254955%_
                            _%hd254689254958%_
                            _%tl254690254960%_
                            _%e254691254963%_
                            _%hd254692254966%_
                            _%tl254693254968%_
                            _%e254694254971%_
                            _%hd254695254974%_
                            _%tl254696254976%_
                            _%e254697254979%_
                            _%hd254698254982%_
                            _%tl254699254984%_
                            _%e254700254987%_
                            _%hd254701254990%_
                            _%tl254702254992%_
                            _%e254703254995%_
                            _%hd254704254998%_
                            _%tl254705255000%_
                            _%e254706255003%_
                            _%hd254707255006%_
                            _%tl254708255008%_
                            _%e254709255011%_
                            _%hd254710255014%_
                            _%tl254711255016%_
                            _%e254712255019%_
                            _%hd254713255022%_
                            _%tl254714255024%_
                            _%e254715255027%_
                            _%hd254716255030%_
                            _%tl254717255032%_
                            _%e254718255035%_
                            _%hd254719255038%_
                            _%tl254720255040%_
                            _%e254721255043%_
                            _%hd254722255046%_
                            _%tl254723255048%_
                            _%e254724255051%_
                            _%hd254725255054%_
                            _%tl254726255056%_
                            _%e254727255059%_
                            _%hd254728255062%_
                            _%tl254729255064%_)
                     (let ((_%g254677255067%_ _%hd254728255062%_)
                           (_%g254678255068%_ _%hd254719255038%_)
                           (_%g254679255069%_ _%hd254710255014%_)
                           (_%g254680255070%_ _%hd254701254990%_)
                           (_%g254681255071%_ _%hd254692254966%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g254681255071%_
                              'bind-method!))
                           (_%__kont255625255626%_
                            _%g254677255067%_
                            _%g254678255068%_
                            _%g254679255069%_
                            _%g254680255070%_
                            _%g254681255071%_)
                           (_%__kont255629255630%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx255623255624%_))
                  (let ((_%e254682254939%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx255623255624%_))))
                    (let ((_%tl254684254944%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254682254939%_)))
                          (_%hd254683254942%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254682254939%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl254684254944%_))
                          (let ((_%e254685254947%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl254684254944%_))))
                            (let ((_%tl254687254952%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254685254947%_)))
                                  (_%hd254686254950%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254685254947%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd254686254950%_))
                                  (let ((_%e254688254955%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd254686254950%_))))
                                    (let ((_%tl254690254960%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254688254955%_)))
                                          (_%hd254689254958%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254688254955%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd254689254958%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd254689254958%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254690254960%_))
                                                  (let ((_%e254691254963%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl254690254960%_))))
                                                    (let ((_%tl254693254968%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254691254963%_)))
                                                          (_%hd254692254966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254691254963%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl254693254968%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl254687254952%_))
                      (let ((_%e254694254971%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl254687254952%_))))
                        (let ((_%tl254696254976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254694254971%_)))
                              (_%hd254695254974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254694254971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd254695254974%_))
                              (let ((_%e254697254979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd254695254974%_))))
                                (let ((_%tl254699254984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e254697254979%_)))
                                      (_%hd254698254982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e254697254979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd254698254982%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd254698254982%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl254699254984%_))
                                              (let ((_%e254700254987%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl254699254984%_))))
                                                (let ((_%tl254702254992%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e254700254987%_)))
                                                      (_%hd254701254990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e254700254987%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl254702254992%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl254696254976%_))
                                                          (let ((_%e254703254995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl254696254976%_))))
                    (let ((_%tl254705255000%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254703254995%_)))
                          (_%hd254704254998%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254703254995%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd254704254998%_))
                          (let ((_%e254706255003%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd254704254998%_))))
                            (let ((_%tl254708255008%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e254706255003%_)))
                                  (_%hd254707255006%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e254706255003%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd254707255006%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd254707255006%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl254708255008%_))
                                          (let ((_%e254709255011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl254708255008%_))))
                                            (let ((_%tl254711255016%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e254709255011%_)))
                                                  (_%hd254710255014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e254709255011%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl254711255016%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl254705255000%_))
                                                      (let ((_%e254712255019%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl254705255000%_))))
                (let ((_%tl254714255024%_
                       (let () (declare (not safe)) (##cdr _%e254712255019%_)))
                      (_%hd254713255022%_
                       (let ()
                         (declare (not safe))
                         (##car _%e254712255019%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd254713255022%_))
                      (let ((_%e254715255027%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd254713255022%_))))
                        (let ((_%tl254717255032%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e254715255027%_)))
                              (_%hd254716255030%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e254715255027%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd254716255030%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd254716255030%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl254717255032%_))
                                      (let ((_%e254718255035%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl254717255032%_))))
                                        (let ((_%tl254720255040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e254718255035%_)))
                                              (_%hd254719255038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e254718255035%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254720255040%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl254714255024%_))
                                                  (let ((_%e254721255043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl254714255024%_))))
                                                    (let ((_%tl254723255048%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e254721255043%_)))
                                                          (_%hd254722255046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e254721255043%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd254722255046%_))
                                                          (let ((_%e254724255051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd254722255046%_))))
                    (let ((_%tl254726255056%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e254724255051%_)))
                          (_%hd254725255054%_
                           (let ()
                             (declare (not safe))
                             (##car _%e254724255051%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd254725255054%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd254725255054%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl254726255056%_))
                                  (let ((_%e254727255059%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl254726255056%_))))
                                    (let ((_%tl254729255064%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e254727255059%_)))
                                          (_%hd254728255062%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e254727255059%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl254729255064%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl254723255048%_))
                                              (_%__match255758255759%_
                                               _%e254682254939%_
                                               _%hd254683254942%_
                                               _%tl254684254944%_
                                               _%e254685254947%_
                                               _%hd254686254950%_
                                               _%tl254687254952%_
                                               _%e254688254955%_
                                               _%hd254689254958%_
                                               _%tl254690254960%_
                                               _%e254691254963%_
                                               _%hd254692254966%_
                                               _%tl254693254968%_
                                               _%e254694254971%_
                                               _%hd254695254974%_
                                               _%tl254696254976%_
                                               _%e254697254979%_
                                               _%hd254698254982%_
                                               _%tl254699254984%_
                                               _%e254700254987%_
                                               _%hd254701254990%_
                                               _%tl254702254992%_
                                               _%e254703254995%_
                                               _%hd254704254998%_
                                               _%tl254705255000%_
                                               _%e254706255003%_
                                               _%hd254707255006%_
                                               _%tl254708255008%_
                                               _%e254709255011%_
                                               _%hd254710255014%_
                                               _%tl254711255016%_
                                               _%e254712255019%_
                                               _%hd254713255022%_
                                               _%tl254714255024%_
                                               _%e254715255027%_
                                               _%hd254716255030%_
                                               _%tl254717255032%_
                                               _%e254718255035%_
                                               _%hd254719255038%_
                                               _%tl254720255040%_
                                               _%e254721255043%_
                                               _%hd254722255046%_
                                               _%tl254723255048%_
                                               _%e254724255051%_
                                               _%hd254725255054%_
                                               _%tl254726255056%_
                                               _%e254727255059%_
                                               _%hd254728255062%_
                                               _%tl254729255064%_)
                                              (_%__kont255629255630%_))
                                          (_%__kont255629255630%_))))
                                  (_%__kont255629255630%_))
                              (_%__kont255629255630%_))
                          (_%__kont255629255630%_))))
                  (_%__kont255629255630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl254714255024%_))
                                                      (if (let ((__tmp255981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp255981 'bind-method!))
                  (let ((_%g254730254893%_ _%hd254719255038%_)
                        (_%g254731254894%_ _%hd254710255014%_)
                        (_%g254732254895%_ _%hd254701254990%_)
                        (_%g254733254896%_ _%hd254692254966%_))
                    (_%__kont255627255628%_
                     _%g254730254893%_
                     _%g254731254894%_
                     _%g254732254895%_
                     _%g254733254896%_))
                  (_%__kont255629255630%_))
              (_%__kont255629255630%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont255629255630%_))))
                                      (_%__kont255629255630%_))
                                  (_%__kont255629255630%_))
                              (_%__kont255629255630%_))))
                      (_%__kont255629255630%_))))
              (_%__kont255629255630%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont255629255630%_))))
                                          (_%__kont255629255630%_))
                                      (_%__kont255629255630%_))
                                  (_%__kont255629255630%_))))
                          (_%__kont255629255630%_))))
                  (_%__kont255629255630%_))
              (_%__kont255629255630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont255629255630%_))
                                          (_%__kont255629255630%_))
                                      (_%__kont255629255630%_))))
                              (_%__kont255629255630%_))))
                      (_%__kont255629255630%_))
                  (_%__kont255629255630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont255629255630%_))
                                              (_%__kont255629255630%_))
                                          (_%__kont255629255630%_))))
                                  (_%__kont255629255630%_))))
                          (_%__kont255629255630%_))))
                  (_%__kont255629255630%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self254494%_ _%stx254495%_)
        (let* ((_%__stx255867255868%_ _%stx254495%_)
               (_%g254498254538%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx255867255868%_)))))
          (let ((_%__kont255869255870%_
                 (lambda (_%g254500254644%_ _%g254501254645%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g254501254645%_))
                               (cons _%g254500254644%_ '())))))
                (_%__kont255871255872%_
                 (lambda (_%g254523254567%_ _%g254524254568%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx255867255868%_))
                (let ((_%e254502254588%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx255867255868%_))))
                  (let ((_%tl254504254593%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e254502254588%_)))
                        (_%hd254503254591%_
                         (let ()
                           (declare (not safe))
                           (##car _%e254502254588%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl254504254593%_))
                        (let ((_%e254505254596%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl254504254593%_))))
                          (let ((_%tl254507254601%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e254505254596%_)))
                                (_%hd254506254599%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e254505254596%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd254506254599%_))
                                (let ((_%e254508254604%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd254506254599%_))))
                                  (let ((_%tl254510254609%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e254508254604%_)))
                                        (_%hd254509254607%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e254508254604%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd254509254607%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd254509254607%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl254510254609%_))
                                                (let ((_%e254511254612%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl254510254609%_))))
                                                  (let ((_%tl254513254617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e254511254612%_)))
                                                        (_%hd254512254615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e254511254612%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254513254617%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl254507254601%_))
                                                            (let ((_%e254514254620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl254507254601%_))))
                      (let ((_%tl254516254625%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254514254620%_)))
                            (_%hd254515254623%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254514254620%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd254515254623%_))
                            (let ((_%e254517254628%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd254515254623%_))))
                              (let ((_%tl254519254633%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e254517254628%_)))
                                    (_%hd254518254631%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e254517254628%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd254518254631%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd254518254631%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl254519254633%_))
                                            (let ((_%e254520254636%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl254519254633%_))))
                                              (let ((_%tl254522254641%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e254520254636%_)))
                                                    (_%hd254521254639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e254520254636%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl254522254641%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254516254625%_))
                                                        (_%__kont255869255870%_
                                                         _%hd254521254639%_
                                                         _%hd254512254615%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g254498254538%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254516254625%_))
                                                        (_%__kont255871255872%_
                                                         _%hd254515254623%_
                                                         _%hd254506254599%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g254498254538%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl254516254625%_))
                                                (_%__kont255871255872%_
                                                 _%hd254515254623%_
                                                 _%hd254506254599%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g254498254538%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl254516254625%_))
                                            (_%__kont255871255872%_
                                             _%hd254515254623%_
                                             _%hd254506254599%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g254498254538%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl254516254625%_))
                                        (_%__kont255871255872%_
                                         _%hd254515254623%_
                                         _%hd254506254599%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g254498254538%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl254516254625%_))
                                (_%__kont255871255872%_
                                 _%hd254515254623%_
                                 _%hd254506254599%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g254498254538%_))))))
                    (let () (declare (not safe)) (_%g254498254538%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl254507254601%_))
                    (let ((_%e254531254559%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl254507254601%_))))
                      (let ((_%tl254533254564%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e254531254559%_)))
                            (_%hd254532254562%_
                             (let ()
                               (declare (not safe))
                               (##car _%e254531254559%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl254533254564%_))
                            (_%__kont255871255872%_
                             _%hd254532254562%_
                             _%hd254506254599%_)
                            (let ()
                              (declare (not safe))
                              (_%g254498254538%_)))))
                    (let () (declare (not safe)) (_%g254498254538%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl254507254601%_))
                                                    (let ((_%e254531254559%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl254507254601%_))))
                                                      (let ((_%tl254533254564%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e254531254559%_)))
                    (_%hd254532254562%_
                     (let () (declare (not safe)) (##car _%e254531254559%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl254533254564%_))
                    (_%__kont255871255872%_
                     _%hd254532254562%_
                     _%hd254506254599%_)
                    (let () (declare (not safe)) (_%g254498254538%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g254498254538%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl254507254601%_))
                                                (let ((_%e254531254559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl254507254601%_))))
                                                  (let ((_%tl254533254564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e254531254559%_)))
                                                        (_%hd254532254562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e254531254559%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl254533254564%_))
                                                        (_%__kont255871255872%_
                                                         _%hd254532254562%_
                                                         _%hd254506254599%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g254498254538%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g254498254538%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl254507254601%_))
                                            (let ((_%e254531254559%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl254507254601%_))))
                                              (let ((_%tl254533254564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e254531254559%_)))
                                                    (_%hd254532254562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e254531254559%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl254533254564%_))
                                                    (_%__kont255871255872%_
                                                     _%hd254532254562%_
                                                     _%hd254506254599%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g254498254538%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g254498254538%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl254507254601%_))
                                    (let ((_%e254531254559%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl254507254601%_))))
                                      (let ((_%tl254533254564%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e254531254559%_)))
                                            (_%hd254532254562%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e254531254559%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl254533254564%_))
                                            (_%__kont255871255872%_
                                             _%hd254532254562%_
                                             _%hd254506254599%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g254498254538%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g254498254538%_))))))
                        (let () (declare (not safe)) (_%g254498254538%_)))))
                (let () (declare (not safe)) (_%g254498254538%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self254481%_)
        (let ((_%self254484%_ _%self254481%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254484%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self254255%_)
        (let* ((_%self254258%_ _%self254255%_)
               (_%self254267254283%_ _%self254258%_)
               (_%E254269254286%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self254267254283%_
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
               (_%K254270254301%_
                (lambda (_%methods254289%_
                         _%metaclass254290%_
                         _%system?254291%_
                         _%final?254292%_
                         _%struct?254293%_
                         _%constructor254294%_
                         _%fields254295%_
                         _%slots254296%_
                         _%precendence-list254297%_
                         _%super254298%_
                         _%id254299%_)
                  (cons '@class
                        (cons _%id254299%_
                              (cons _%super254298%_
                                    (cons _%precendence-list254297%_
                                          (cons _%slots254296%_
                                                (cons _%fields254295%_
                                                      (cons _%constructor254294%_
                                                            (cons _%struct?254293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?254292%_
                                (cons _%system?254291%_
                                      (cons _%metaclass254290%_
                                            (cons (if _%methods254289%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods254289%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e254271254304%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '1 '#f '#f)))
               (_%id254307%_ _%e254271254304%_)
               (_%e254272254309%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '2 '#f '#f)))
               (_%super254312%_ _%e254272254309%_)
               (_%e254273254314%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '3 '#f '#f)))
               (_%precendence-list254317%_ _%e254273254314%_)
               (_%e254274254319%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '4 '#f '#f)))
               (_%slots254322%_ _%e254274254319%_)
               (_%e254275254324%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '5 '#f '#f)))
               (_%fields254327%_ _%e254275254324%_)
               (_%e254276254329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '6 '#f '#f)))
               (_%constructor254332%_ _%e254276254329%_)
               (_%e254277254334%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '7 '#f '#f)))
               (_%struct?254337%_ _%e254277254334%_)
               (_%e254278254339%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '8 '#f '#f)))
               (_%final?254342%_ _%e254278254339%_)
               (_%e254279254344%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self254267254283%_ '9 '#f '#f)))
               (_%system?254347%_ _%e254279254344%_)
               (_%e254280254349%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self254267254283%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass254352%_ _%e254280254349%_)
               (_%e254281254354%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self254267254283%_
                   '11
                   '#f
                   '#f)))
               (_%methods254357%_ _%e254281254354%_))
          (_%K254270254301%_
           _%methods254357%_
           _%metaclass254352%_
           _%system?254347%_
           _%final?254342%_
           _%struct?254337%_
           _%constructor254332%_
           _%fields254327%_
           _%slots254322%_
           _%precendence-list254317%_
           _%super254312%_
           _%id254307%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self254120%_)
        (let ((_%self254123%_ _%self254120%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self254123%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self253985%_)
        (let ((_%self253988%_ _%self253985%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253988%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self253850%_)
        (let ((_%self253853%_ _%self253850%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253853%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253853%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253853%_
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
      (lambda (_%self253715%_)
        (let ((_%self253718%_ _%self253715%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253718%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253718%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self253718%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self253580%_)
        (let ((_%self253583%_ _%self253580%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253583%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253583%_
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
      (lambda (_%self253394%_)
        (let* ((_%self253397%_ _%self253394%_)
               (_%self253406253415%_ _%self253397%_)
               (_%E253408253418%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self253406253415%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K253409253437%_
                (lambda (_%dispatch253421%_
                         _%arity253422%_
                         _%signature253423%_)
                  (if _%signature253423%_
                      (let ((_%signature253425%_ _%signature253423%_))
                        (cons '@lambda
                              (cons _%arity253422%_
                                    (cons _%dispatch253421%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature253425%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature253425%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature253425%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature253425%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature253425%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity253422%_
                                  (cons _%dispatch253421%_ '()))))))
               (_%e253410253440%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253406253415%_ '1 '#f '#f)))
               (_%e253411253443%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253406253415%_ '2 '#f '#f)))
               (_%signature253446%_ _%e253411253443%_)
               (_%e253412253448%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253406253415%_ '3 '#f '#f)))
               (_%arity253451%_ _%e253412253448%_)
               (_%e253413253453%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self253406253415%_ '4 '#f '#f)))
               (_%dispatch253456%_ _%e253413253453%_))
          (_%K253409253437%_
           _%dispatch253456%_
           _%arity253451%_
           _%signature253446%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self253254%_)
        (let ((_%self253257%_ _%self253254%_))
          (letrec ((_%clause-e253268%_
                    (lambda (_%clause253270%_)
                      (cdr (let ((__method255955
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause253270%_
                                     'typedecl))))
                             (if __method255955
                                 (let ()
                                   (declare (not safe))
                                   (__method255955 _%clause253270%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause253270%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e253268%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self253257%_
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
      (lambda (_%self253119%_)
        (let ((_%self253122%_ _%self253119%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self253122%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self253122%_
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
      (lambda (_%self252984%_)
        (let ((_%self252987%_ _%self252984%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252987%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self252987%_
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
      (lambda (_%self252849%_)
        (let ((_%self252852%_ _%self252849%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self252852%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
