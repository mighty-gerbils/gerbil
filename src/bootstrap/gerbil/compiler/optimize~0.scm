(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1742237320)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp201949
                   (let ((__obj201943
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
                       (gxc#optimizer-info:::init! __obj201943))
                     __obj201943)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp201949)))))
    (define gxc#optimize!
      (lambda (_%ctx201552%_)
        (let ((__tmp201952
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx201552%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx201552%_)
                 (let ((__tmp201954
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp201953
                        (##structure-ref
                         _%ctx201552%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp201954 __tmp201953 '#t))
                 (let ((_%code201555%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx201552%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx201552%_
                    _%code201555%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp201951 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201950 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201952
           gxc#current-compile-mutators
           __tmp201951
           gxc#current-compile-local-type
           __tmp201950))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx201538%_)
        (letrec ((_%load-it!201540%_
                  (lambda (_%id201550%_)
                    (if (let ((__tmp201955
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp201955 _%id201550%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id201550%_)
                          (let ((__tmp201956
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp201956 _%id201550%_ '#t)))))))
          (let* ((_%modid201542%_
                  (##structure-ref
                   _%ctx201538%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str201544%_ (symbol->string _%modid201542%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str201544%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str201544%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201540%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201540%_
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
      (lambda (_%ctx201475%_)
        (letrec* ((_%deps201477%_
                   (let* ((_%imports201528%_
                           (##structure-ref
                            _%ctx201475%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e201530%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx201475%_))))
                     (if _%$e201530%_
                         ((lambda (_%g201532201534%_)
                            (cons _%g201532201534%_ _%imports201528%_))
                          _%$e201530%_)
                         _%imports201528%_))))
          (let _%lp201479%_ ((_%rest201481%_ _%deps201477%_))
            (let* ((_%rest201482201490%_ _%rest201481%_)
                   (_%else201484201498%_ (lambda () '#!void))
                   (_%K201486201516%_
                    (lambda (_%rest201501%_ _%hd201502%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd201502%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp201958
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp201957
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201502%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp201958 __tmp201957))
                                '#!void
                                (begin
                                  (let ((_%$e201505%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd201502%_))))
                                    (if _%$e201505%_
                                        ((lambda (_%pre201508%_)
                                           (_%lp201479%_
                                            (cons _%pre201508%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd201502%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e201505%_)
                                        (_%lp201479%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201502%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd201502%_)))
                            (_%lp201479%_ _%rest201501%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd201502%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp201960
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp201959
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd201502%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp201960 __tmp201959))
                                    '#!void
                                    (begin
                                      (_%lp201479%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201502%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd201502%_)))
                                (_%lp201479%_ _%rest201501%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd201502%_
                                     'gx#module-import::t))
                                  (_%lp201479%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201502%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest201501%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd201502%_
                                         'gx#module-export::t))
                                      (_%lp201479%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd201502%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest201501%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd201502%_
                                             'gx#import-set::t))
                                          (_%lp201479%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd201502%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest201501%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd201502%_))))))))))
              (if (pair? _%rest201482201490%_)
                  (let ((_%hd201487201519%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201482201490%_)))
                        (_%tl201488201521%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201482201490%_))))
                    (let* ((_%hd201524%_ _%hd201487201519%_)
                           (_%rest201526%_ _%tl201488201521%_))
                      (_%K201486201516%_ _%rest201526%_ _%hd201524%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx201455%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx201455%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx201455%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht201457%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id201459%_
                    (##structure-ref
                     _%ctx201455%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod201461%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht201457%_ _%id201459%_)))
                   (_%$e201464%_ _%mod201461%_))
              (if _%$e201464%_
                  _%$e201464%_
                  (let* ((_%mod201467%_
                          (gxc#optimizer-import-ssxi _%ctx201455%_))
                         (_%val201472%_
                          (let ((_%$e201469%_ _%mod201467%_))
                            (if _%$e201469%_ _%$e201469%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht201457%_ _%id201459%_ _%val201472%_))
                    _%val201472%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx201453%_)
        (if (##structure-ref _%ctx201453%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx201453%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id201430%_)
        (letrec ((_%catch-e201432%_
                  (lambda (_%exn201451%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn201451%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn201451%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id201430%_))))
                    '#f))
                 (_%import-e201433%_
                  (lambda ()
                    (let* ((_%str-id201436%_
                            (let ((__tmp201961
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id201430%_))))
                              (declare (not safe))
                              (##string-append __tmp201961 '".ssxi")))
                           (_%artefact-path201444%_
                            (let ((_%odir201437201439%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir201437201439%_
                                  (let ((_%odir201442%_ _%odir201437201439%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id201436%_
                                        '".ss"))
                                     _%odir201442%_))
                                  '#f)))
                           (_%library-path201446%_
                            (let ((__tmp201962
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id201436%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp201962)))
                           (_%ssxi-path201448%_
                            (if (and _%artefact-path201444%_
                                     (file-exists? _%artefact-path201444%_))
                                _%artefact-path201444%_
                                _%library-path201446%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path201448%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path201448%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e201432%_ _%import-e201433%_)))))
    (define gxc#optimize-source
      (lambda (_%stx201415%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx201415%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx201415%_))
        (let* ((_%stx201417%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx201415%_)))
               (_%stx201419%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx201417%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx201419%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx201419%_))
          (let _%fixpoint201422%_ ((_%current201424%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx201419%_))
            (let ((_%refined201426%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current201424%_ _%refined201426%_)
                  '#!void
                  (_%fixpoint201422%_ _%refined201426%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx201419%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx201419%_))
          (let ((_%stx201428%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx201419%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx201428%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp201964 (list gxc#::generate-runtime-empty::t))
            (__tmp201963 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp201964
         '()
         __tmp201963
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args201412%_
        (apply make-instance gxc#::generate-ssxi::t _%$args201412%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp201965
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
        (__make-promise __tmp201965)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx201404%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self201407%_
                (let ((__obj201945
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj201945))
               (__tmp201966
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201407%_ _%stx201404%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201966
           gxc#current-compile-method
           _%self201407%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self201364%_ _%stx201365%_)
        (let* ((_%g201367201377%_
                (lambda (_%g201368201374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201368201374%_))))
               (_%g201366201401%_
                (lambda (_%g201368201380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201368201380%_))
                      (let ((_%e201370201382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201368201380%_))))
                        (let ((_%hd201371201385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201370201382%_)))
                              (_%tl201372201387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201370201382%_))))
                          ((lambda (_%L201390%_)
                             (let ((__tmp201969
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self201364%_
                                         _%stx201365%_))))
                                   (__tmp201967
                                    (let ((__tmp201968
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp201968 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp201969
                                gx#current-expander-phi
                                __tmp201967)))
                           _%tl201372201387%_)))
                      (_%g201367201377%_ _%g201368201380%_)))))
          (_%g201366201401%_ _%stx201365%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self201303%_ _%stx201304%_)
        (let* ((_%g201306201320%_
                (lambda (_%g201307201317%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201307201317%_))))
               (_%g201305201361%_
                (lambda (_%g201307201323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201307201323%_))
                      (let ((_%e201310201325%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201307201323%_))))
                        (let ((_%hd201311201328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201310201325%_)))
                              (_%tl201312201330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201310201325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201312201330%_))
                              (let ((_%e201313201333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201312201330%_))))
                                (let ((_%hd201314201336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201313201333%_)))
                                      (_%tl201315201338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201313201333%_))))
                                  ((lambda (_%L201341%_ _%L201342%_)
                                     (let* ((_%ctx201355%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L201342%_)))
                                            (_%code201357%_
                                             (##structure-ref
                                              _%ctx201355%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp201970
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self201303%_
                                                  _%code201357%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201970
                                        gx#current-expander-context
                                        _%ctx201355%_)))
                                   _%tl201315201338%_
                                   _%hd201314201336%_)))
                              (_%g201306201320%_ _%g201307201323%_))))
                      (_%g201306201320%_ _%g201307201323%_)))))
          (_%g201305201361%_ _%stx201304%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self201108%_ _%stx201109%_)
        (letrec ((_%generate-e201111%_
                  (lambda (_%id201288%_)
                    (let* ((_%sym201290%_
                            (if (let ((__tmp201971
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp201971))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id201288%_))
                                '#f))
                           (_%$e201292%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym201290%_))))
                      (if _%$e201292%_
                          ((lambda (_%klass201295%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym201290%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym201290%_
                                                     (cons (let ((__method201946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass201295%_ 'typedecl))))
                     (if __method201946
                         (let ()
                           (declare (not safe))
                           (__method201946 _%klass201295%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass201295%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym201290%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym201290%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e201292%_)
                          (let ((_%$e201297%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym201290%_))))
                            (if _%$e201297%_
                                ((lambda (_%type201300%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym201290%_
                                      '" "
                                      _%type201300%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type201300%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym201290%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym201290%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type201300%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym201290%_
                                                   (cons (let ((__method201947
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type201300%_ 'typedecl))))
                   (if __method201947
                       (let ()
                         (declare (not safe))
                         (__method201947 _%type201300%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type201300%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e201297%_)
                                '(begin))))))))
          (let* ((_%__stx201558201559%_ _%stx201109%_)
                 (_%g201114201152%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201558201559%_)))))
            (let ((_%__kont201560201561%_
                   (lambda (_%L201270%_) (_%generate-e201111%_ _%L201270%_)))
                  (_%__kont201562201563%_
                   (lambda (_%L201205%_)
                     (let ((_%types201231%_
                            (map _%generate-e201111%_
                                 (let ((__tmp201972
                                        (lambda (_%g201223201226%_
                                                 _%g201224201228%_)
                                          (cons _%g201223201226%_
                                                _%g201224201228%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp201972 '() _%L201205%_)))))
                       (cons 'begin _%types201231%_)))))
              (let ((_%__match201613201614%_
                     (lambda (_%e201130201157%_
                              _%hd201131201160%_
                              _%tl201132201162%_
                              _%e201133201165%_
                              _%hd201134201168%_
                              _%tl201135201170%_
                              _%__splice201564201565%_
                              _%target201136201173%_
                              _%tl201138201175%_)
                       (letrec ((_%loop201139201178%_
                                 (lambda (_%hd201137201181%_
                                          _%id201143201183%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd201137201181%_))
                                       (let ((_%e201140201186%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd201137201181%_))))
                                         (let ((_%lp-tl201142201191%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201140201186%_)))
                                               (_%lp-hd201141201189%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201140201186%_))))
                                           (_%loop201139201178%_
                                            _%lp-tl201142201191%_
                                            (cons _%lp-hd201141201189%_
                                                  _%id201143201183%_))))
                                       (let ((_%id201144201194%_
                                              (reverse _%id201143201183%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl201135201170%_))
                                             (let ((_%e201145201197%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl201135201170%_))))
                                               (let ((_%tl201147201202%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201145201197%_)))
                                                     (_%hd201146201200%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201145201197%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl201147201202%_))
                                                     (_%__kont201562201563%_
                                                      _%id201144201194%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201114201152%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g201114201152%_))))))))
                         (_%loop201139201178%_ _%target201136201173%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201558201559%_))
                    (let ((_%e201117201238%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201558201559%_))))
                      (let ((_%tl201119201243%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201117201238%_)))
                            (_%hd201118201241%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201117201238%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl201119201243%_))
                            (let ((_%e201120201246%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl201119201243%_))))
                              (let ((_%tl201122201251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201120201246%_)))
                                    (_%hd201121201249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201120201246%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd201121201249%_))
                                    (let ((_%e201123201254%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd201121201249%_))))
                                      (let ((_%tl201125201259%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201123201254%_)))
                                            (_%hd201124201257%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201123201254%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl201125201259%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201122201251%_))
                                                (let ((_%e201126201262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201122201251%_))))
                                                  (let ((_%tl201128201267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201126201262%_)))
                                                        (_%hd201127201265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201126201262%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201128201267%_))
                                                        (_%__kont201560201561%_
                                                         _%hd201124201257%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd201121201249%_))
                                                            (let ((_%__splice201564201565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd201121201249%_
                              '0))))
                      (let ((_%tl201138201175%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201564201565%_ '1)))
                            (_%target201136201173%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201564201565%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201138201175%_))
                            (_%__match201613201614%_
                             _%e201117201238%_
                             _%hd201118201241%_
                             _%tl201119201243%_
                             _%e201120201246%_
                             _%hd201121201249%_
                             _%tl201122201251%_
                             _%__splice201564201565%_
                             _%target201136201173%_
                             _%tl201138201175%_)
                            (let ()
                              (declare (not safe))
                              (_%g201114201152%_)))))
                    (let () (declare (not safe)) (_%g201114201152%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd201121201249%_))
                                                    (let ((_%__splice201564201565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd201121201249%_
                                                              '0))))
                                                      (let ((_%tl201138201175%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice201564201565%_ '1)))
                    (_%target201136201173%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice201564201565%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl201138201175%_))
                    (_%__match201613201614%_
                     _%e201117201238%_
                     _%hd201118201241%_
                     _%tl201119201243%_
                     _%e201120201246%_
                     _%hd201121201249%_
                     _%tl201122201251%_
                     _%__splice201564201565%_
                     _%target201136201173%_
                     _%tl201138201175%_)
                    (let () (declare (not safe)) (_%g201114201152%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201114201152%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd201121201249%_))
                                                (let ((_%__splice201564201565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd201121201249%_
                                                          '0))))
                                                  (let ((_%tl201138201175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201564201565%_
                                                            '1)))
                                                        (_%target201136201173%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201564201565%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201138201175%_))
                                                        (_%__match201613201614%_
                                                         _%e201117201238%_
                                                         _%hd201118201241%_
                                                         _%tl201119201243%_
                                                         _%e201120201246%_
                                                         _%hd201121201249%_
                                                         _%tl201122201251%_
                                                         _%__splice201564201565%_
                                                         _%target201136201173%_
                                                         _%tl201138201175%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g201114201152%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201114201152%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd201121201249%_))
                                        (let ((_%__splice201564201565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd201121201249%_
                                                  '0))))
                                          (let ((_%tl201138201175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201564201565%_
                                                    '1)))
                                                (_%target201136201173%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201564201565%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201138201175%_))
                                                (_%__match201613201614%_
                                                 _%e201117201238%_
                                                 _%hd201118201241%_
                                                 _%tl201119201243%_
                                                 _%e201120201246%_
                                                 _%hd201121201249%_
                                                 _%tl201122201251%_
                                                 _%__splice201564201565%_
                                                 _%target201136201173%_
                                                 _%tl201138201175%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201114201152%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201114201152%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g201114201152%_)))))
                    (let () (declare (not safe)) (_%g201114201152%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self200661%_ _%stx200662%_)
        (let* ((_%__stx201616201617%_ _%stx200662%_)
               (_%g200666200768%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201616201617%_)))))
          (let ((_%__kont201618201619%_
                 (lambda (_%L201058%_
                          _%L201059%_
                          _%L201060%_
                          _%L201061%_
                          _%L201062%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L201061%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L201060%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L201059%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L201058%_))
                                                 '())))))))
                (_%__kont201620201621%_
                 (lambda (_%L200884%_ _%L200885%_ _%L200886%_ _%L200887%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200886%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200885%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200884%_))
                                           (cons '#f '())))))))
                (_%__kont201622201623%_ (lambda () '(begin))))
            (let ((_%__match201751201752%_
                   (lambda (_%e200673200930%_
                            _%hd200674200933%_
                            _%tl200675200935%_
                            _%e200676200938%_
                            _%hd200677200941%_
                            _%tl200678200943%_
                            _%e200679200946%_
                            _%hd200680200949%_
                            _%tl200681200951%_
                            _%e200682200954%_
                            _%hd200683200957%_
                            _%tl200684200959%_
                            _%e200685200962%_
                            _%hd200686200965%_
                            _%tl200687200967%_
                            _%e200688200970%_
                            _%hd200689200973%_
                            _%tl200690200975%_
                            _%e200691200978%_
                            _%hd200692200981%_
                            _%tl200693200983%_
                            _%e200694200986%_
                            _%hd200695200989%_
                            _%tl200696200991%_
                            _%e200697200994%_
                            _%hd200698200997%_
                            _%tl200699200999%_
                            _%e200700201002%_
                            _%hd200701201005%_
                            _%tl200702201007%_
                            _%e200703201010%_
                            _%hd200704201013%_
                            _%tl200705201015%_
                            _%e200706201018%_
                            _%hd200707201021%_
                            _%tl200708201023%_
                            _%e200709201026%_
                            _%hd200710201029%_
                            _%tl200711201031%_
                            _%e200712201034%_
                            _%hd200713201037%_
                            _%tl200714201039%_
                            _%e200715201042%_
                            _%hd200716201045%_
                            _%tl200717201047%_
                            _%e200718201050%_
                            _%hd200719201053%_
                            _%tl200720201055%_)
                     (let ((_%L201058%_ _%hd200719201053%_)
                           (_%L201059%_ _%hd200710201029%_)
                           (_%L201060%_ _%hd200701201005%_)
                           (_%L201061%_ _%hd200692200981%_)
                           (_%L201062%_ _%hd200683200957%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L201062%_
                              'bind-method!))
                           (_%__kont201618201619%_
                            _%L201058%_
                            _%L201059%_
                            _%L201060%_
                            _%L201061%_
                            _%L201062%_)
                           (_%__kont201622201623%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201616201617%_))
                  (let ((_%e200673200930%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201616201617%_))))
                    (let ((_%tl200675200935%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200673200930%_)))
                          (_%hd200674200933%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200673200930%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200675200935%_))
                          (let ((_%e200676200938%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200675200935%_))))
                            (let ((_%tl200678200943%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200676200938%_)))
                                  (_%hd200677200941%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200676200938%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200677200941%_))
                                  (let ((_%e200679200946%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200677200941%_))))
                                    (let ((_%tl200681200951%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200679200946%_)))
                                          (_%hd200680200949%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200679200946%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200680200949%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200680200949%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200681200951%_))
                                                  (let ((_%e200682200954%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200681200951%_))))
                                                    (let ((_%tl200684200959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200682200954%_)))
                                                          (_%hd200683200957%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200682200954%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200684200959%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200678200943%_))
                      (let ((_%e200685200962%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200678200943%_))))
                        (let ((_%tl200687200967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200685200962%_)))
                              (_%hd200686200965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200685200962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200686200965%_))
                              (let ((_%e200688200970%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200686200965%_))))
                                (let ((_%tl200690200975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200688200970%_)))
                                      (_%hd200689200973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200688200970%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200689200973%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200689200973%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200690200975%_))
                                              (let ((_%e200691200978%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200690200975%_))))
                                                (let ((_%tl200693200983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200691200978%_)))
                                                      (_%hd200692200981%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200691200978%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200693200983%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200687200967%_))
                                                          (let ((_%e200694200986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200687200967%_))))
                    (let ((_%tl200696200991%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200694200986%_)))
                          (_%hd200695200989%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200694200986%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200695200989%_))
                          (let ((_%e200697200994%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200695200989%_))))
                            (let ((_%tl200699200999%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200697200994%_)))
                                  (_%hd200698200997%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200697200994%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200698200997%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd200698200997%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200699200999%_))
                                          (let ((_%e200700201002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200699200999%_))))
                                            (let ((_%tl200702201007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200700201002%_)))
                                                  (_%hd200701201005%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200700201002%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200702201007%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200696200991%_))
                                                      (let ((_%e200703201010%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200696200991%_))))
                (let ((_%tl200705201015%_
                       (let () (declare (not safe)) (##cdr _%e200703201010%_)))
                      (_%hd200704201013%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200703201010%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200704201013%_))
                      (let ((_%e200706201018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200704201013%_))))
                        (let ((_%tl200708201023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200706201018%_)))
                              (_%hd200707201021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200706201018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200707201021%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200707201021%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200708201023%_))
                                      (let ((_%e200709201026%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200708201023%_))))
                                        (let ((_%tl200711201031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200709201026%_)))
                                              (_%hd200710201029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200709201026%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200711201031%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200705201015%_))
                                                  (let ((_%e200712201034%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200705201015%_))))
                                                    (let ((_%tl200714201039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200712201034%_)))
                                                          (_%hd200713201037%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200712201034%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200713201037%_))
                                                          (let ((_%e200715201042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200713201037%_))))
                    (let ((_%tl200717201047%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200715201042%_)))
                          (_%hd200716201045%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200715201042%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200716201045%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd200716201045%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200717201047%_))
                                  (let ((_%e200718201050%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200717201047%_))))
                                    (let ((_%tl200720201055%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200718201050%_)))
                                          (_%hd200719201053%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200718201050%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200720201055%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200714201039%_))
                                              (_%__match201751201752%_
                                               _%e200673200930%_
                                               _%hd200674200933%_
                                               _%tl200675200935%_
                                               _%e200676200938%_
                                               _%hd200677200941%_
                                               _%tl200678200943%_
                                               _%e200679200946%_
                                               _%hd200680200949%_
                                               _%tl200681200951%_
                                               _%e200682200954%_
                                               _%hd200683200957%_
                                               _%tl200684200959%_
                                               _%e200685200962%_
                                               _%hd200686200965%_
                                               _%tl200687200967%_
                                               _%e200688200970%_
                                               _%hd200689200973%_
                                               _%tl200690200975%_
                                               _%e200691200978%_
                                               _%hd200692200981%_
                                               _%tl200693200983%_
                                               _%e200694200986%_
                                               _%hd200695200989%_
                                               _%tl200696200991%_
                                               _%e200697200994%_
                                               _%hd200698200997%_
                                               _%tl200699200999%_
                                               _%e200700201002%_
                                               _%hd200701201005%_
                                               _%tl200702201007%_
                                               _%e200703201010%_
                                               _%hd200704201013%_
                                               _%tl200705201015%_
                                               _%e200706201018%_
                                               _%hd200707201021%_
                                               _%tl200708201023%_
                                               _%e200709201026%_
                                               _%hd200710201029%_
                                               _%tl200711201031%_
                                               _%e200712201034%_
                                               _%hd200713201037%_
                                               _%tl200714201039%_
                                               _%e200715201042%_
                                               _%hd200716201045%_
                                               _%tl200717201047%_
                                               _%e200718201050%_
                                               _%hd200719201053%_
                                               _%tl200720201055%_)
                                              (_%__kont201622201623%_))
                                          (_%__kont201622201623%_))))
                                  (_%__kont201622201623%_))
                              (_%__kont201622201623%_))
                          (_%__kont201622201623%_))))
                  (_%__kont201622201623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200705201015%_))
                                                      (if (let ((__tmp201973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp201973 'bind-method!))
                  (let ((_%L200884%_ _%hd200710201029%_)
                        (_%L200885%_ _%hd200701201005%_)
                        (_%L200886%_ _%hd200692200981%_)
                        (_%L200887%_ _%hd200683200957%_))
                    (_%__kont201620201621%_
                     _%L200884%_
                     _%L200885%_
                     _%L200886%_
                     _%L200887%_))
                  (_%__kont201622201623%_))
              (_%__kont201622201623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201622201623%_))))
                                      (_%__kont201622201623%_))
                                  (_%__kont201622201623%_))
                              (_%__kont201622201623%_))))
                      (_%__kont201622201623%_))))
              (_%__kont201622201623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201622201623%_))))
                                          (_%__kont201622201623%_))
                                      (_%__kont201622201623%_))
                                  (_%__kont201622201623%_))))
                          (_%__kont201622201623%_))))
                  (_%__kont201622201623%_))
              (_%__kont201622201623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201622201623%_))
                                          (_%__kont201622201623%_))
                                      (_%__kont201622201623%_))))
                              (_%__kont201622201623%_))))
                      (_%__kont201622201623%_))
                  (_%__kont201622201623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201622201623%_))
                                              (_%__kont201622201623%_))
                                          (_%__kont201622201623%_))))
                                  (_%__kont201622201623%_))))
                          (_%__kont201622201623%_))))
                  (_%__kont201622201623%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self200485%_ _%stx200486%_)
        (let* ((_%__stx201860201861%_ _%stx200486%_)
               (_%g200489200529%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201860201861%_)))))
          (let ((_%__kont201862201863%_
                 (lambda (_%L200635%_ _%L200636%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200636%_))
                               (cons _%L200635%_ '())))))
                (_%__kont201864201865%_
                 (lambda (_%L200558%_ _%L200559%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201860201861%_))
                (let ((_%e200493200579%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx201860201861%_))))
                  (let ((_%tl200495200584%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200493200579%_)))
                        (_%hd200494200582%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200493200579%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200495200584%_))
                        (let ((_%e200496200587%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200495200584%_))))
                          (let ((_%tl200498200592%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200496200587%_)))
                                (_%hd200497200590%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200496200587%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200497200590%_))
                                (let ((_%e200499200595%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200497200590%_))))
                                  (let ((_%tl200501200600%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200499200595%_)))
                                        (_%hd200500200598%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200499200595%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200500200598%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd200500200598%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200501200600%_))
                                                (let ((_%e200502200603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200501200600%_))))
                                                  (let ((_%tl200504200608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200502200603%_)))
                                                        (_%hd200503200606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200502200603%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200504200608%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200498200592%_))
                                                            (let ((_%e200505200611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200498200592%_))))
                      (let ((_%tl200507200616%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200505200611%_)))
                            (_%hd200506200614%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200505200611%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd200506200614%_))
                            (let ((_%e200508200619%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200506200614%_))))
                              (let ((_%tl200510200624%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200508200619%_)))
                                    (_%hd200509200622%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200508200619%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200509200622%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd200509200622%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200510200624%_))
                                            (let ((_%e200511200627%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200510200624%_))))
                                              (let ((_%tl200513200632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200511200627%_)))
                                                    (_%hd200512200630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200511200627%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200513200632%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200507200616%_))
                                                        (_%__kont201862201863%_
                                                         _%hd200512200630%_
                                                         _%hd200503200606%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200489200529%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200507200616%_))
                                                        (_%__kont201864201865%_
                                                         _%hd200506200614%_
                                                         _%hd200497200590%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200489200529%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200507200616%_))
                                                (_%__kont201864201865%_
                                                 _%hd200506200614%_
                                                 _%hd200497200590%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200489200529%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200507200616%_))
                                            (_%__kont201864201865%_
                                             _%hd200506200614%_
                                             _%hd200497200590%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200489200529%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200507200616%_))
                                        (_%__kont201864201865%_
                                         _%hd200506200614%_
                                         _%hd200497200590%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200489200529%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200507200616%_))
                                (_%__kont201864201865%_
                                 _%hd200506200614%_
                                 _%hd200497200590%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200489200529%_))))))
                    (let () (declare (not safe)) (_%g200489200529%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200498200592%_))
                    (let ((_%e200522200550%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200498200592%_))))
                      (let ((_%tl200524200555%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200522200550%_)))
                            (_%hd200523200553%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200522200550%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200524200555%_))
                            (_%__kont201864201865%_
                             _%hd200523200553%_
                             _%hd200497200590%_)
                            (let ()
                              (declare (not safe))
                              (_%g200489200529%_)))))
                    (let () (declare (not safe)) (_%g200489200529%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200498200592%_))
                                                    (let ((_%e200522200550%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200498200592%_))))
                                                      (let ((_%tl200524200555%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200522200550%_)))
                    (_%hd200523200553%_
                     (let () (declare (not safe)) (##car _%e200522200550%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200524200555%_))
                    (_%__kont201864201865%_
                     _%hd200523200553%_
                     _%hd200497200590%_)
                    (let () (declare (not safe)) (_%g200489200529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200489200529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200498200592%_))
                                                (let ((_%e200522200550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200498200592%_))))
                                                  (let ((_%tl200524200555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200522200550%_)))
                                                        (_%hd200523200553%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200522200550%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200524200555%_))
                                                        (_%__kont201864201865%_
                                                         _%hd200523200553%_
                                                         _%hd200497200590%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200489200529%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200489200529%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200498200592%_))
                                            (let ((_%e200522200550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200498200592%_))))
                                              (let ((_%tl200524200555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200522200550%_)))
                                                    (_%hd200523200553%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200522200550%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200524200555%_))
                                                    (_%__kont201864201865%_
                                                     _%hd200523200553%_
                                                     _%hd200497200590%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200489200529%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200489200529%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200498200592%_))
                                    (let ((_%e200522200550%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200498200592%_))))
                                      (let ((_%tl200524200555%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200522200550%_)))
                                            (_%hd200523200553%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200522200550%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200524200555%_))
                                            (_%__kont201864201865%_
                                             _%hd200523200553%_
                                             _%hd200497200590%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200489200529%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200489200529%_))))))
                        (let () (declare (not safe)) (_%g200489200529%_)))))
                (let () (declare (not safe)) (_%g200489200529%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self198679200470%_)
        (let* ((_%self200473%_ _%self198679200470%_)
               (_%self200475%_ _%self200473%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200475%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self198680200241%_)
        (let* ((_%self200244%_ _%self198680200241%_)
               (_%self200246%_ _%self200244%_)
               (_%self200255200271%_ _%self200246%_)
               (_%E200257200275%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self200255200271%_
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
               (_%K200258200290%_
                (lambda (_%methods200278%_
                         _%metaclass200279%_
                         _%system?200280%_
                         _%final?200281%_
                         _%struct?200282%_
                         _%constructor200283%_
                         _%fields200284%_
                         _%slots200285%_
                         _%precendence-list200286%_
                         _%super200287%_
                         _%id200288%_)
                  (cons '@class
                        (cons _%id200288%_
                              (cons _%super200287%_
                                    (cons _%precendence-list200286%_
                                          (cons _%slots200285%_
                                                (cons _%fields200284%_
                                                      (cons _%constructor200283%_
                                                            (cons _%struct?200282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?200281%_
                                (cons _%system?200280%_
                                      (cons _%metaclass200279%_
                                            (cons (if _%methods200278%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods200278%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e200259200293%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '1 '#f '#f)))
               (_%id200296%_ _%e200259200293%_)
               (_%e200260200298%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '2 '#f '#f)))
               (_%super200301%_ _%e200260200298%_)
               (_%e200261200303%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '3 '#f '#f)))
               (_%precendence-list200306%_ _%e200261200303%_)
               (_%e200262200308%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '4 '#f '#f)))
               (_%slots200311%_ _%e200262200308%_)
               (_%e200263200313%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '5 '#f '#f)))
               (_%fields200316%_ _%e200263200313%_)
               (_%e200264200318%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '6 '#f '#f)))
               (_%constructor200321%_ _%e200264200318%_)
               (_%e200265200323%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '7 '#f '#f)))
               (_%struct?200326%_ _%e200265200323%_)
               (_%e200266200328%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '8 '#f '#f)))
               (_%final?200331%_ _%e200266200328%_)
               (_%e200267200333%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200255200271%_ '9 '#f '#f)))
               (_%system?200336%_ _%e200267200333%_)
               (_%e200268200338%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200255200271%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass200341%_ _%e200268200338%_)
               (_%e200269200343%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200255200271%_
                   '11
                   '#f
                   '#f)))
               (_%methods200346%_ _%e200269200343%_))
          (_%K200258200290%_
           _%methods200346%_
           _%metaclass200341%_
           _%system?200336%_
           _%final?200331%_
           _%struct?200326%_
           _%constructor200321%_
           _%fields200316%_
           _%slots200311%_
           _%precendence-list200306%_
           _%super200301%_
           _%id200296%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self198681200104%_)
        (let* ((_%self200107%_ _%self198681200104%_)
               (_%self200109%_ _%self200107%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200109%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self198682199967%_)
        (let* ((_%self199970%_ _%self198682199967%_)
               (_%self199972%_ _%self199970%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199972%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self198683199830%_)
        (let* ((_%self199833%_ _%self198683199830%_)
               (_%self199835%_ _%self199833%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199835%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199835%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199835%_
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
      (lambda (_%self198684199693%_)
        (let* ((_%self199696%_ _%self198684199693%_)
               (_%self199698%_ _%self199696%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199698%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199698%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199698%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self198685199556%_)
        (let* ((_%self199559%_ _%self198685199556%_)
               (_%self199561%_ _%self199559%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199561%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199561%_
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
      (lambda (_%self198686199367%_)
        (let* ((_%self199370%_ _%self198686199367%_)
               (_%self199372%_ _%self199370%_)
               (_%self199381199390%_ _%self199372%_)
               (_%E199383199394%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199381199390%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K199384199413%_
                (lambda (_%dispatch199397%_
                         _%arity199398%_
                         _%signature199399%_)
                  (if _%signature199399%_
                      (let ((_%signature199401%_ _%signature199399%_))
                        (cons '@lambda
                              (cons _%arity199398%_
                                    (cons _%dispatch199397%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature199401%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature199401%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature199401%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature199401%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature199401%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity199398%_
                                  (cons _%dispatch199397%_ '()))))))
               (_%e199385199416%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199381199390%_ '1 '#f '#f)))
               (_%e199386199419%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199381199390%_ '2 '#f '#f)))
               (_%signature199422%_ _%e199386199419%_)
               (_%e199387199424%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199381199390%_ '3 '#f '#f)))
               (_%arity199427%_ _%e199387199424%_)
               (_%e199388199429%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199381199390%_ '4 '#f '#f)))
               (_%dispatch199432%_ _%e199388199429%_))
          (_%K199384199413%_
           _%dispatch199432%_
           _%arity199427%_
           _%signature199422%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self198687199226%_)
        (let* ((_%self199229%_ _%self198687199226%_)
               (_%self199231%_ _%self199229%_))
          (letrec ((_%clause-e199241%_
                    (lambda (_%clause199243%_)
                      (cdr (let ((__method201948
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause199243%_
                                     'typedecl))))
                             (if __method201948
                                 (let ()
                                   (declare (not safe))
                                   (__method201948 _%clause199243%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause199243%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e199241%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self199231%_
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
      (lambda (_%self198688199089%_)
        (let* ((_%self199092%_ _%self198688199089%_)
               (_%self199094%_ _%self199092%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199094%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199094%_
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
      (lambda (_%self198689198952%_)
        (let* ((_%self198955%_ _%self198689198952%_)
               (_%self198957%_ _%self198955%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198957%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198957%_
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
      (lambda (_%self198690198815%_)
        (let* ((_%self198818%_ _%self198690198815%_)
               (_%self198820%_ _%self198818%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198820%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
